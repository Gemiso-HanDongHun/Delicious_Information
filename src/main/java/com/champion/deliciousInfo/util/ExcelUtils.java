package com.champion.deliciousInfo.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.champion.deliciousInfo.exception.ExcelException;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import lombok.extern.log4j.Log4j2;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;

//엑셀 파일을 분석하는 객체
@Log4j2
public class ExcelUtils {
	
	public static List getParseResult(File file) throws ExcelException {
		List<FoodNutrient> foodNutrientList = new  ArrayList<>(); //product Dto를 담기위함
		try {
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			log.info("엑셀 접근 성공");
			//엑셀 파일의 구성 시트 접근
			XSSFSheet sheet = workbook.getSheetAt(0);
			int totalRow =sheet.getPhysicalNumberOfRows(); //실제 사용자가 입력한 row 수
			log.info("현재 사용중인 row수는 -{}",totalRow);

			for(int a=1; a<totalRow; a++) {
				XSSFRow row = sheet.getRow(a);
				int totalCell =row.getPhysicalNumberOfCells();
				FoodNutrient foodNutrient = new FoodNutrient();
				Food food = new Food();
				//하나의 row에 소속된 각셀을 접근하자
				for(int i=0; i<totalCell; i++) {
					XSSFCell cell = row.getCell(i);
					log.info("현재 case는 -{},{}",a,i);
					switch(i) {
					case 0: food.setName(cell.getStringCellValue());break;
					case 1:	food.setKcal((int)cell.getNumericCellValue());break;
					case 2:	foodNutrient.setCarbohydrate((float)(cell.getNumericCellValue()));break;
					case 3:	foodNutrient.setProtein((float)cell.getNumericCellValue());break;
					case 4:	foodNutrient.setFat((float)cell.getNumericCellValue());break;
					case 5:	foodNutrient.setVitaminA((float)cell.getNumericCellValue());break;
					case 6:	foodNutrient.setVitaminC((float)cell.getNumericCellValue());break;
					case 7: foodNutrient.setVitaminE((float)cell.getNumericCellValue());break;
					case 8: foodNutrient.setCalcium((float)cell.getNumericCellValue());break;
					case 9: foodNutrient.setIron((float)cell.getNumericCellValue());break;
					case 10: foodNutrient.setMagnesium((float)cell.getNumericCellValue());break;
					case 11: foodNutrient.setSodium((float)cell.getNumericCellValue());break;
					case 12: foodNutrient.setOmega((float)cell.getNumericCellValue());break;
					case 13: foodNutrient.setServingSize((int)cell.getNumericCellValue());break;
					case 14: food.setImg(cell.getStringCellValue());
					}
					log.info("{}. {}case종료 ",a,i);
				}
				foodNutrient.setFood(food);
				foodNutrientList.add(foodNutrient);
			}
			log.info("엑셀 분석 결과 -{}" ,foodNutrientList);
		} catch (InvalidFormatException e) {
			e.printStackTrace();
			throw new ExcelException("엑셀 타입 실패");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return foodNutrientList;
	}

}
