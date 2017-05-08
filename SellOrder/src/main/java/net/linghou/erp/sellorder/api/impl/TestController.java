package net.linghou.erp.sellorder.api.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
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

import net.linghou.erp.sellorder.domain.Areas;
import net.linghou.erp.sellorder.domain.Flag;
import net.linghou.erp.sellorder.domain.Logistics;
import net.linghou.erp.sellorder.domain.PayMentTerm;
import net.linghou.erp.sellorder.domain.PaymentStatu;
import net.linghou.erp.sellorder.domain.RefundStatus;
import net.linghou.erp.sellorder.domain.SellOrder;
import net.linghou.erp.sellorder.domain.SellOrderItem;
import net.linghou.erp.sellorder.domain.SellOrderSource;
import net.linghou.erp.sellorder.domain.Shop;
import net.linghou.erp.sellorder.domain.ValueSOStatus;
import net.linghou.erp.sellorder.domain.Warehouse;
import net.linghou.erp.sellorder.mapper.AreasMapper;
import net.linghou.erp.sellorder.mapper.SellOrderItemMapper;
import net.linghou.erp.sellorder.mapper.SellOrderMapper;


@Controller
@ResponseBody
@RequestMapping(path = "/")
public class TestController {

	@Autowired
	private AreasMapper am;

	@Autowired
	private SellOrderMapper sm;

	@Autowired
	private SellOrderItemMapper sellorderitem;

	@RequestMapping(path = "/test1", method = RequestMethod.GET)
	public Object test() {
		List<Areas> areas = am.findAll();
		return areas;
	}

	@RequestMapping(path = "/test3", method = RequestMethod.GET)
	public Object test4() {
		return sm.findAll();
	}

	/**
	 * 删除SellOrderItem测试
	 */
	@RequestMapping(path = "/test7", method = RequestMethod.GET)
	public Object test8(int id) {
		int num = sellorderitem.delOneSellOrderItem(id);
		return num;
	}

	/**
	 * 删除SellOrder并删除子项 测试
	 */
	@RequestMapping(path = "/test6", method = RequestMethod.GET)
	public Object test7(int id) {
		int num = sm.deleteSellOrder(id);
		num += sellorderitem.delBatchSellOrderItemByOrderId(id);
		return num;
	}

	/**
	 * 更新SellOrder测试
	 */
	@RequestMapping(path = "/test5", method = RequestMethod.GET)
	public Object test6(SellOrder sellorder1) {
		ValueSOStatus va = new ValueSOStatus();
		PaymentStatu ps = new PaymentStatu();
		RefundStatus re = new RefundStatus();
		SellOrderSource source = new SellOrderSource();
		Shop shop = new Shop();
		Logistics los = new Logistics();
		Flag fg = new Flag();
		SellOrder sellorder = new SellOrder();
		PayMentTerm pt = new PayMentTerm();
		Warehouse wh = new Warehouse();
		sellorder.setWarehouse(wh);
		sellorder.setPayMentTerm(pt);
		sellorder.setShop(shop);
		sellorder.setSource(source);
		sellorder.setLogistics(los);
		sellorder.setPaymentStatus(ps);
		sellorder.setSellerFlag(fg);
		sellorder.setRefundStatus(re);
		sellorder.setOrderId(9);
		sellorder.setStatus(va);
		sellorder.setBuyerNick("ddad");
		int num = sm.updateSellOrder(sellorder);
		return num;
	}

	@RequestMapping(path = "/test4", method = RequestMethod.GET)
	public Object test5(SellOrderItem item1) {
		SellOrderItem item = new SellOrderItem();
		item.setItemId(32);
		item.setNum(4);
		item.setWarehouseName("dada");
		item.setIsReal(false);
		item.setProjectProfit(new BigDecimal(2));
		int susses = sellorderitem.updateSellOrderItem(item);
		return susses;
	}

	@RequestMapping(path = "/test", method = RequestMethod.GET)
	public Object test(ModelMap model) {
		// region
		Shop shop = new Shop();
		shop.setShopId(1);
		SellOrder sellorder = new SellOrder();
		sellorder.setShop(shop);
		ValueSOStatus status = new ValueSOStatus();
		status.setStatuId(1);
		status.setStatuName("等待买家付款");
		RefundStatus rstatus = new RefundStatus();
		rstatus.setId(1);
		rstatus.setName("买家已经申请退款，等待卖家同意");
		sellorder.setStatus(status);
		sellorder.setRefundStatus(rstatus);
		sellorder.setTakeDays(2);
		sellorder.setBuyerNick("make");
		sellorder.setErpMark(1);
		sellorder.setSellerFlag(new Flag(1, "da"));
		sellorder.setBuyTimes(2);
		sellorder.setReceiverName("zhangsan");
		sellorder.setReceiverPhone("15111111111");
		sellorder.setReceiverCountry("中国");
		sellorder.setReceiverState("河北省");
		sellorder.setReceiverCity("唐山市");
		sellorder.setReceiverDistrict("丰润县");
		sellorder.setReceiverAddress("中国河北省唐山市丰润县xxx");
		sellorder.setReceiverShippingAddress("中国河北省唐山市丰润县xxx");
		sellorder.setReceiverZip("064000");
		sellorder.setTotalNumber(10);
		sellorder.setTotalAccount(new BigDecimal("1000"));
		sellorder.setDiscount(new BigDecimal("200"));
		sellorder.setBalance(new BigDecimal("0"));
		sellorder.setTotalDiscount(new BigDecimal("200"));
		sellorder.setSum(new BigDecimal("800"));
		sellorder.setPayment(new BigDecimal("800"));
		sellorder.setRefund(new BigDecimal("3"));
		sellorder.setFreightReceived(new BigDecimal("20"));
		sellorder.setFreightSum(new BigDecimal("0"));
		sellorder.setFreightPaid(new BigDecimal("30"));
		sellorder.setStorageCharges(new BigDecimal("20"));
		sellorder.setPlatformCharges(new BigDecimal("5"));
		sellorder.setCogs(new BigDecimal("40"));
		sellorder.setTotalCost(new BigDecimal("400"));
		sellorder.setPayAccount("15155555555");
		// sellorder.setShopId((long) 1);
		SellOrderItem item1 = new SellOrderItem();
		SellOrderItem item2 = new SellOrderItem();
		item1.setNum(1);
		item2.setNum(2);
		item1.setWarehouseName("dada1");
		item1.setSpecCode("fafafaf1");
		item2.setWarehouseName("dada1");
		item2.setSpecCode("fafafaf2");
		sellorder.addItem(item1);
		sellorder.addItem(item2);
		// 保存后返回ID
		int k = sm.addSellOrder(sellorder);

		System.out.println(k + "parent " + sellorder.getOrderId());
		int orderId = sellorder.getOrderId();
		List<SellOrderItem> list = new ArrayList<SellOrderItem>();
		Collection<SellOrderItem> collection = sellorder.items1.values();
		for (Iterator<SellOrderItem> i = collection.iterator(); i.hasNext();) {
			SellOrderItem item = i.next();
			item.setOrderId(orderId);
			list.add(item);
		}
		if (sellorderitem.saveSellOrderItems(list) > 0)
			return "true";
		else
			return "false";
		// endregion
	}

	/**
	 * 订单测试接口
	 */
	@RequestMapping(path = "/test2", method = RequestMethod.POST)
	public Object test3(@SuppressWarnings("rawtypes") @RequestParam Map sellorderitem) {
		JSON json = (JSON) JSON.toJSON(sellorderitem);
		SellOrderItem I = JSON.parseObject(json.toJSONString(), SellOrderItem.class);
		return I;

	}

}