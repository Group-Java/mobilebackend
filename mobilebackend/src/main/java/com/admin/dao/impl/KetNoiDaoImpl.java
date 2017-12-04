package com.admin.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.admin.controller.KetNoi;
import com.admin.dao.KetNoiDao;
import com.mobilebackend.dbprovider.DataConnection;
import com.mobilebackend.model.KetNoiModel;

@Repository("ketNoiDao")
public class KetNoiDaoImpl implements KetNoiDao {
	
	
	private DataConnection con = new DataConnection();
	
	
	@Override
	public KetNoiModel GetInfoKetNoi(int maketnoi) {
		String query = "select * from ketnoi where maketnoi=1";
		try {
			ResultSet rs = con.createConnect().createStatement().executeQuery(query);
			KetNoiModel ketnoi = new KetNoiModel();
			while(rs.next()) {
				ketnoi.setMaketnoi(rs.getInt("maketnoi"));
				ketnoi.setWlan(rs.getString("wlan"));
				ketnoi.setBuletooth(rs.getString("bluetooth"));
				ketnoi.setGps(rs.getString("gps"));
			}
			return ketnoi;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}
