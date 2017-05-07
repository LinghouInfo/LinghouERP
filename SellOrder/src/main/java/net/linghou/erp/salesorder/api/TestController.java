package net.linghou.erp.salesorder.api;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import net.linghou.erp.salesorder.domain.Areas;
import net.linghou.erp.salesorder.domain.SellOrderItem;
import net.linghou.erp.salesorder.mapper.AreasMapper;

@Controller
@ResponseBody
@RequestMapping(path = "/")
public class TestController{
	
@Autowired
private AreasMapper  am;

	@RequestMapping(path="/test1",method=RequestMethod.GET)
	public Object test(){
		List<Areas> areas=am.findAll();
		return	areas;
	}
	
	@RequestMapping(path = "/test", method = RequestMethod.GET)
	public Object test(ModelMap model) {
		BigDecimal d=new BigDecimal(20.00);
		BigDecimal c=new BigDecimal(25.00);
		SellOrderItem se=new SellOrderItem();
		se.setCostPrice(d);
		se.setDiscountMoney(c);		
		return se;
	}
	
	/**订单测试接口*/
	@RequestMapping(path = "/test2", method = RequestMethod.POST)
	public Object test3(@RequestParam Map sellorderitem){
		String mapJson = sellorderitem.toString();
		mapJson=mapJson.replace("=","");
		mapJson=mapJson.substring(1, mapJson.length());
		mapJson=mapJson.substring(0, mapJson.length()-1);
		System.out.println(mapJson);
		SellOrderItem item=JSON.parseObject(mapJson, SellOrderItem.class);	
		return item;
	}

}