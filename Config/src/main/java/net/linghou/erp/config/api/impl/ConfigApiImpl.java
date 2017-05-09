package net.linghou.erp.config.api.impl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path = "/")
public class ConfigApiImpl implements net.linghou.erp.config.api.LocalApi{
	
	@RequestMapping(path = "/findBrand", method = RequestMethod.GET)
	public Object findBrand(){
		return "/BasicInfo/brand/findBrand";
	}
	
	@RequestMapping(path = "/modifyBrand", method = RequestMethod.GET)
	public Object modifyBrand(Model model){
		
		return "/BasicInfo/brand/modifyBrand";
	}
	
	
	@RequestMapping(path = "/findShop", method = RequestMethod.GET)
	public Object findShop(){
		return "/BasicInfo/shop/findShop";
	}
	
	@RequestMapping(path = "/modifyShop", method = RequestMethod.GET)
	public Object modifyShop(Model model){
		
		return "/BasicInfo/shop/modifyShop";
	}	
		
	@RequestMapping(path = "/sortShop", method = RequestMethod.GET)
	public Object sortShop(Model model){
		
		return "/BasicInfo/shop/sortShop";
	}	
	
	
	@RequestMapping(path = "/sortSpu", method = RequestMethod.GET)
	public Object sortSpu(Model model){
		
		return "/BasicInfo/spu/sortSpu";
	}
	
	
	@RequestMapping(path = "/findSpu", method = RequestMethod.GET)
	public Object findSpu(Model model){
		
		return "/BasicInfo/spu/findSpu";
	}
	

	@RequestMapping(path = "/spuModify", method = RequestMethod.GET)
	public Object modifySpu(Model model){
		
		return "/BasicInfo/spu/spuModify";
	}
	
	
	
	
	@RequestMapping(path = "/findLogistics", method = RequestMethod.GET)
	public Object findLogistics(){
		return "/BasicInfo/logistics/findLogistics";
	}
	
	@RequestMapping(path = "/modifyLogistics", method = RequestMethod.GET)
	public Object modifyLogistics(Model model){
		
		return "/BasicInfo/logistics/modifyLogistics";
	}	
		
	@RequestMapping(path = "/sortLogistics", method = RequestMethod.GET)
	public Object sortLogistics(Model model){
		
		return "/BasicInfo/logistics/sortLogistics";
	}	
	
	@RequestMapping(path = "/modifyWarehouse", method = RequestMethod.GET)
	public Object modifyWarehouse(Model model){
		
		return "/BasicInfo/warehouse/modifyWarehouse";
	}	
		
	@RequestMapping(path = "/findWarehouse", method = RequestMethod.GET)
	public Object findWarehouse(Model model){
		
		return "/BasicInfo/warehouse/findWarehouse";
	}	
	
	
	
	
	
	
	
	

}