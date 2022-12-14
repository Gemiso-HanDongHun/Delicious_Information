package com.champion.deliciousInfo.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


public class ExcelException extends RuntimeException {
    public ExcelException(String msg) {
        super(msg);
    }
    public ExcelException(String msg ,Throwable e) {
        super(msg,e);
    }
    public ExcelException(Throwable e) {
        super(e);
    }

}
