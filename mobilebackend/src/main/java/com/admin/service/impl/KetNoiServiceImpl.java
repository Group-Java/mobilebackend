package com.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.KetNoiDao;
import com.admin.service.KetNoiService;
import com.mobilebackend.model.KetNoiModel;

@Service("ketNoiService")
public class KetNoiServiceImpl implements KetNoiService {

	@Autowired
	KetNoiDao ketnoi;
	
	
	@Override
	public KetNoiModel GetInfoKetNoi(int maketnoi) {
		return ketnoi.GetInfoKetNoi(maketnoi);
	}

}
