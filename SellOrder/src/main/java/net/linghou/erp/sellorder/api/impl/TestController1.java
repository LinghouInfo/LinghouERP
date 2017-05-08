package net.linghou.erp.sellorder.api.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.linghou.erp.sellorder.domain.Brand;
import net.linghou.erp.sellorder.mapper.AreasMapper;
import net.linghou.erp.sellorder.mapper.SellOrderItemMapper;
import net.linghou.erp.sellorder.mapper.SellOrderMapper;



@Controller
@RequestMapping(path = "/")
public class TestController1 {

	@Autowired
	private AreasMapper am;

	@Autowired
	private SellOrderMapper sm;

	@Autowired
	private SellOrderItemMapper sellorderitem;

	List<Brand> list=new ArrayList<Brand>();
	
	@RequestMapping(path = "/queryBrand", method = RequestMethod.POST)
	public Object queryBrand(Model model){
		System.out.println("1");
		Brand brand=new Brand();
		brand.setBrandName("雀巢");
		brand.setSerialNumber("1");
		Brand brand1=new Brand();
		brand1.setBrandName("雀巢1");
		brand1.setSerialNumber("2");
		list.add(brand);
		list.add(brand1);				
		ModelAndView mv=new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/BasicInfo/brand/findBrand");
		return mv;
	}
	

	/**
	 * 初始化页面
	 *  */
	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public Object startView() {
		System.out.println(1);
		
		return "/BasicInfo/brand/findBrand";
	}
	


}