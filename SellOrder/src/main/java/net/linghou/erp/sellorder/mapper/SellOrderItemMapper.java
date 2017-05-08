package net.linghou.erp.sellorder.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.linghou.erp.sellorder.domain.SellOrderItem;



@Repository
public interface SellOrderItemMapper {

	public int saveSellOrderItems(List<SellOrderItem> list);

	public int updateSellOrderItem(SellOrderItem item);

	public int delBatchSellOrderItemByOrderId(int orderId);

	/** 删除一个订单项 */
	public int delOneSellOrderItem(int itemId);
}
