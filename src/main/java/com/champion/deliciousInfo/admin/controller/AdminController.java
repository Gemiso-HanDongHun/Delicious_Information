package com.champion.deliciousInfo.admin.controller;

import com.champion.deliciousInfo.admin.domain.Admin;
import com.champion.deliciousInfo.admin.service.AdminService;
import com.champion.deliciousInfo.admin.service.LoginFlag;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodService;
import com.champion.deliciousInfo.util.FileUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.net.http.HttpRequest;
import java.util.List;

import static com.champion.deliciousInfo.util.FileUtils.UPLOAD_PATH;

@Controller
@RequestMapping("/admin")
@Log4j2
@RequiredArgsConstructor
public class AdminController {
    
    private final AdminService adminService;
    private final FoodService foodService;
    
    @GetMapping("")
    public String getMain(){
        log.info("GetMapping admin/index  forwarding to index.jsp");
        return "admin/index";
    }

    @GetMapping("/login")
    public String getLoginForm(@ModelAttribute("message") String message){
        log.info("GetMapping admin/login-form forwarding to login-form.jsp - {}", message);
        return "admin/login-form";
    }

    @PostMapping("/login")
    public String login(Admin admin, HttpSession session, Model model){
        log.info("PostMapping login -{}",admin);
        LoginFlag flag = adminService.findAdmin(admin, session);
        if (flag == LoginFlag.SUCCESS) {
            log.info("login success!!");
            return "redirect:/admin";
        }
        model.addAttribute("loginMsg", flag);
        return "admin/login-form";
    }
    @GetMapping("/food")
    public String getFoodList(Model model){
        log.info("GetMapping admin/food forwarding to foodList.jsp ");
        List<Food> foodList = foodService.getList();
        model.addAttribute("foodList",foodList);
        return "admin/food-table";
    }

    @GetMapping("/write")
    public String getWriteForm(){
        log.info("GetMapping admin/write forwarding to food-Write.jsp");
        return "admin/food-write";
    }
    @PostMapping("/write")
    public String foodInsert(Food food, RedirectAttributes ra,
                             @RequestParam("file") MultipartFile file
    ){
        log.info("PostMapping admin/write forwarding to food-table.jsp-{}",food);
        log.info("file - {}",file.getOriginalFilename());

        boolean flag = foodService.insert(food,file);
        ra= flag?
            ra.addFlashAttribute("msg", "등록성공")
                : ra.addFlashAttribute("msg", "등록실패");
        return  "redirect:/admin/food";
    }

    @GetMapping("/detail/{foodNo}")
    public String getFoodList(@PathVariable int foodNo,Model model){
        log.info("GetMapping admin/food{foodNo} forwarding to foodDetail -{} ",foodNo);
        Food foundFood = foodService.findOne(foodNo);
        model.addAttribute("food",foundFood);
        return "admin/food-detail";
    }

    @PostMapping("/food/modify/{foodNo}")
    public String modify(Food food, @PathVariable int foodNo,RedirectAttributes ra,
                         @RequestParam("file") MultipartFile file){
        log.info("PostMapping admin/food/modify/{foodNo} modify -{},{} ",food,file);
        food.setFoodNo(foodNo);
        boolean flag=false;
        if(file.getOriginalFilename().equals("")){
            flag = foodService.modify(food);
            log.info("modify 실행 -{}");

        }else{
            flag=foodService.modify(food,file);
            log.info("modifyfile 실행 -{}");

        }
        ra=  flag? ra.addFlashAttribute("msg","수정성공")
                : ra.addFlashAttribute("msg","수정실패");
        log.info("flag value -{}",flag);
        return  "redirect:/admin/food";
    }

    @PostMapping("/food/delete/{foodNo}")
    public String delete(@PathVariable int foodNo,RedirectAttributes ra){
        log.info("PostMapping admin/food/delete/{foodNo} modify -{} ",foodNo);
        boolean flag = foodService.remove(foodNo);
        ra=  flag? ra.addFlashAttribute("msg","삭제성공")
                : ra.addFlashAttribute("msg","삭제실패");
        return  "redirect:/admin/food";
    }

    @GetMapping("/loadFile")
    @ResponseBody
    // fileName = /2022/08/01/변환된 파일명
    public ResponseEntity<byte[]> loadFile(int foodNo) {

        log.info("/loadFile GET - {}", foodNo);

        // 클라이언트가 요청하는 파일의 진짜 바이트 데이터를 갖다줘야 함.
        Food foundFood = foodService.findOne(foodNo);
        String fileName=foundFood.getImg();
        // 1. 요청 파일 찾아서 file객체로 포장
        File f = new File(UPLOAD_PATH + fileName);

        if (!f.exists()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        // 2. 해당 파일을 InputStream을 통해 불러온다.
        try (FileInputStream fis = new FileInputStream(f)) {

            // 3. 클라이언트에게 순수 이미지를 응답해야 하므로 MIME TYPE을 응답헤더에 설정
            // ex) image/jpeg, image/png, image/gif
            // 확장자를 추출해야 함.
            String ext = FileUtils.getFileExtension(fileName);
            MediaType mediaType = FileUtils.getMediaType(ext);

            // 응답헤더에 미디어 타입 설정
            HttpHeaders headers = new HttpHeaders();

            if (mediaType != null) { // 이미지라면
                headers.setContentType(mediaType);
            } else { // 이미지가 아니면 다운로드 가능하게 설정
                headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);

                // 파일명을 원래대로 복구
                fileName = fileName.substring(fileName.lastIndexOf("_") + 1);

                // 파일명이 한글인 경우 인코딩 재설정
                String encoding = new String(
                        fileName.getBytes("UTF-8"), "ISO-8859-1");

                // 헤더에 위 내용들 추가
                headers.add("Content-Disposition"
                        , "attachment; fileName=\"" + encoding + "\"");

            }

            // 4. 파일 순수데이터 바이트배열에 저장.
            byte[] rawData = IOUtils.toByteArray(fis);

            // 5. 비동기통신에서 데이터 응답할 때 ResponseEntity객체를 사용
            return new ResponseEntity<>(rawData, headers, HttpStatus.OK); // 클라이언트에 파일 데이터 응답

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }



}
