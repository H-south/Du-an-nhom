package com.poly.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	/**
	 * Đọc chuỗi giá trị của tham số
	 */
	public String getString(String name,String defaultValue) {
		String value = request.getParameter(name);
		return value !=null ? value:defaultValue;
	}
	/**
	 * Đọc giá trị số nguyên của tham số 
	 */
	public int getInt(String name,int defaultValue) {
		String value = getString(name, String.valueOf(defaultValue));
		return Integer.parseInt(value);
	}
	/*
	 * Đọc giá trị của số thực của tham số
	 */
	public double getDouble(String name, double defaultValue) {
		String value = getString(name, String.valueOf(defaultValue));
		return Double.parseDouble(value);
	}
	/*
	 * Đọc giá trị Boolean của tham số
	 */
	public boolean getBoolean(String name,boolean defaultValue) {
		String value = getString(name, String.valueOf(defaultValue));
		return Boolean.parseBoolean(value);
	}
	/*
	 * Đọc giá trị thời gian của tham số
	 */
	public Date getDate(String name, String pattern) {
		String value = getString(name, "");
		try {
			return new SimpleDateFormat(pattern).parse(value);
		}catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
	}
	/*
	 * Lưu file vào thư mục
	 */
	public File save(MultipartFile file, String path) throws IOException {
        String fileName = file.getOriginalFilename();
        File destinationFile = new File(path + File.separator + fileName);

        // 
        destinationFile.getParentFile().mkdirs();

        // 
        file.transferTo(destinationFile);

        return destinationFile;
    }

}

