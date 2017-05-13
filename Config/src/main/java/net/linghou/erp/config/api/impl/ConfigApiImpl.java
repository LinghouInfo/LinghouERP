package net.linghou.erp.config.api.impl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.linghou.erp.config.domain.Brand;
import net.linghou.erp.config.domain.Message;

@Controller
@RequestMapping(path = "/")
public class ConfigApiImpl implements net.linghou.erp.config.api.LocalApi{
	
	
	
	/**基础模板首页*/
	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public Object index(){
	
		return "/BasicInfo/index/index";
	}
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public Object index1(){		
		return "/BasicInfo/index/index";
	}
	
	
	
	
	/**SPU分类*/
	@RequestMapping(path = "/sortSpu", method = RequestMethod.GET)
	public Object sortSpu(){		
		return "/BasicInfo/spu/sortSpu";
	}
	
	
	/**店铺分类*/
	@RequestMapping(path = "/sortShop", method = RequestMethod.GET)
	public Object sortShop(){		

		return "/BasicInfo/shop/sortShop";
	}
	
	
	
	/**添加品牌信息*/
	@ResponseBody
	@RequestMapping(path = "/addBrand", method = RequestMethod.POST)
	public Object addBrand(@ModelAttribute("form") Brand brand,@RequestParam("brandName")String brandName,
			@RequestParam("serialNumber")String serialNumber,
			RedirectAttributes arrt)
	{
			

		System.out.println("序号"+serialNumber+"品牌名称"+brandName);
		System.out.println("序号2"+brand.getSerialNumber()+"品牌名称"+brand.getBrandName());
		
	
		return Message.添加成功;

	}
	
	
	
	
	
	
	
	@RequestMapping(path = "/findBrand", method = RequestMethod.GET)
	public Object findBrand(){
		
		return "/BasicInfo/brand/findBrand";
	}
	
	@RequestMapping(path = "/modifyBrand", method = RequestMethod.GET)
	public Object modifyBrand(Model model){
		
		return "/BasicInfo/brand/modifyBrand";
	}
	


	
	@RequestMapping(path = "/sortBrand", method = RequestMethod.GET)
	public Object sortBrand(Model model){
		
		return "/BasicInfo/brand/sortBrand";
	}
	
	
	
	
	
	@RequestMapping(path = "/findShop", method = RequestMethod.GET)
	public Object findShop(){
		return "/BasicInfo/shop/findShop";
	}
	
	@RequestMapping(path = "/modifyShop", method = RequestMethod.GET)
	public Object modifyShop(Model model){
		
		return "/BasicInfo/shop/modifyShop";
	}	
		
	@RequestMapping(path = "/sorthop", method = RequestMethod.GET)
	public Object sorthop(Model model){
		
		return "/BasicInfo/shop/sorthop";
	}	
	
	
	@RequestMapping(path = "/sortpu", method = RequestMethod.GET)
	public Object sortpu(Model model){
		
		return "/BasicInfo/spu/sortpu";
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
	
	@RequestMapping(path = "/addLogistics", method = RequestMethod.GET)
	public Object addLogistics(){
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