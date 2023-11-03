package com.poly.exceptions;

import com.poly.dtos.ResponseDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(MoneyNotEnoughException.class)
    public ResponseEntity<ResponseDTO<String>> handleMoneyNotEnoughException(MoneyNotEnoughException ex) {
        ResponseDTO<String> response = new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(),ex.getMessage(),"Money give not enough!");
        return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
    }
}
