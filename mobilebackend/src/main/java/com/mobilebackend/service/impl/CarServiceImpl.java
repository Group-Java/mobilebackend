package com.mobilebackend.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobilebackend.dao.CarDao;
import com.mobilebackend.model.CarList;
import com.mobilebackend.service.CarService;

@Service("carService")
public class CarServiceImpl implements CarService {

	@Autowired
	CarDao carDao;
	
	@Override
	public CarList findAll() {
		return carDao.fineAll();
		
	}

}
