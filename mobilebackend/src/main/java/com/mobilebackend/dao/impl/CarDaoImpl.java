package com.mobilebackend.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mobilebackend.dao.CarDao;
import com.mobilebackend.dbprovider.DataConnection;
import com.mobilebackend.model.Car;
import com.mobilebackend.model.CarList;

@Repository("carDao")
public class CarDaoImpl implements CarDao{

private DataConnection dataConnnection=new DataConnection();
	
	@Override
	public CarList fineAll() {
		CarList carList= new CarList();
		String query="select * from xe";
		try {
			ResultSet rs=dataConnnection.createConnect().createStatement().executeQuery(query);
			List<Car> list=new ArrayList<Car>();
			while (rs.next()) {
				Car car=new Car();
				car.setName(rs.getString("tenxe"));
				car.setBrand(rs.getString("hang"));
				car.setDate(rs.getString("ngaysx"));
				car.setWeight(rs.getDouble("cannang"));
				list.add(car);
			}
			carList.setDanhsachxe(list);
			carList.setSoLuongXe(list.size());
			dataConnnection.disConnect();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return carList;
	}

	

}
