package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.CVsRepository;
import com.poly.entity.CVs;


@Service
public class CVService {
	 @Autowired
	    private CVsRepository cvRepository;

	    public CVs saveCV(CVs cv) {
	        return cvRepository.save(cv);
	    }
}
