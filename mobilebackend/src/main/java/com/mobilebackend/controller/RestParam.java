package com.mobilebackend.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobilebackend.model.Car;
import com.mobilebackend.model.CarList;
import com.mobilebackend.model.User;

@Controller
@RequestMapping("/param/")
public class RestParam {

	/*
	 * http://localhost:8080/Spring4MVCHelloWorldNoXMLDemo/param/method7/KhanhToan
	 */
	@RequestMapping(value="method7/{name}")
	@ResponseBody
	public String method7(@PathVariable("name") String name){
		return "My name is "+name+ " and I am gay";
	}
	
	@RequestMapping(value="method8/{a}/{b}")
	@ResponseBody
	public String method8(@PathVariable("a") int a, @PathVariable("b") int b ){
		int c = a + b;
		return "Ket qua: "+c;
	}
	
	@RequestMapping(value="method9")
	@ResponseBody
	public String method9(@RequestParam("cmnd") String cmnd){
		return "My ID = "+cmnd;
	}
	
	/*
	 * http://localhost:8080/Spring4MVCHelloWorldNoXMLDemo/param/nhan?num1=3&num2=5
	 */
	@RequestMapping(value="nhan")
	@ResponseBody
	public String nhan(@RequestParam("num1") int num1, @RequestParam("num2") int num2){
		int c = num1*num2;
		return "Ket qua: "+c;
	}
	
	@RequestMapping(value="car")
	@ResponseBody
	public Car cars(){
		Car car = new Car();
		car.setBrand("BMW");
		car.setDate("10-29-2018");
		car.setName("320i");
		car.setWeight(2.0);
		return car;
	}
	
	@RequestMapping(value="car-list-01")
	@ResponseBody
	public List<Car> carList01(){
		List<Car> list=new ArrayList<Car>();
		Car car1=new Car();
		car1.setBrand("BMW");
		car1.setDate("10-29-2018");
		car1.setName("320i");
		car1.setWeight(2.0);
		
		Car car2=new Car();
		car2.setBrand("Wave RSX");
		car2.setDate("10-29-2018");
		car2.setName("320i");
		car2.setWeight(4.0);
		
		Car car3=new Car();
		car3.setBrand("Wave alpha");
		car3.setDate("10-29-2018");
		car3.setName("320i");
		car3.setWeight(3.0);
		
		list.add(car1);
		list.add(car2);
		list.add(car3);	
		
		return list;
		
	}
	
	@RequestMapping(value="car-list-02")
	@ResponseBody
	public CarList carList02(){
		List<Car> list=new ArrayList<Car>();
		Car car1=new Car();
		car1.setBrand("BMW");
		car1.setDate("10-29-2018");
		car1.setName("320i");
		car1.setWeight(2.0);
		
		Car car2=new Car();
		car2.setBrand("Wave RSX");
		car2.setDate("10-29-2018");
		car2.setName("320i");
		car2.setWeight(4.0);
		
		Car car3=new Car();
		car3.setBrand("Wave alpha");
		car3.setDate("10-29-2018");
		car3.setName("320i");
		car3.setWeight(3.0);
		
		list.add(car1);
		list.add(car2);
		list.add(car3);
		
		CarList cl = new CarList();
		cl.setDanhsachxe(list);
		cl.setSoLuongXe(3);
		return cl;
		
	}
	
	@RequestMapping(value="method-10", method = RequestMethod.POST)
	@ResponseBody
	public String method10(@RequestBody Car car){
		System.out.println(car);
		return "success";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	@ResponseBody
	public String method11(@RequestBody User user){
		if(user.getUserName().equals("admin") && user.getPassword().equals("123")){
			return "Login success";
		}
		return "Login failed";
	}
	
	@RequestMapping(value="xe-nang-nhat", method = RequestMethod.POST)
	@ResponseBody
	public Car method12(@RequestBody CarList list){
		Car maxWeightCar = list.getDanhsachxe().get(0);
		for(Car car:list.getDanhsachxe()){
			if(car.getWeight() > maxWeightCar.getWeight()){
				maxWeightCar = car;
			}
		}
		/*double max=Double.MIN_VALUE;
		for(int i=0;i<list.getDanhsachxe().size();i++){
			if(list.getDanhsachxe().get(i).getWeight() > max){
				max=list.getDanhsachxe().get(i).getWeight();
			}
		}
		for(Car c:list.getDanhsachxe()){
			if( c.getWeight() == max){
				return c;
			}
		}*/
		return maxWeightCar;
	}
	
	
}
