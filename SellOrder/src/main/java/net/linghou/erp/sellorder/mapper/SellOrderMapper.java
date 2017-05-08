package net.linghou.erp.sellorder.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import net.linghou.erp.sellorder.domain.SellOrder;



@Repository
public interface SellOrderMapper {

	public ArrayList<SellOrder> findAll();
	
	public int addSellOrder(SellOrder sellorder);
	
	public int updateSellOrder(SellOrder sellorder);
	
	public int deleteSellOrder(int orderId);
	
}
