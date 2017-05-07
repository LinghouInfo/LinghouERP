package net.linghou.erp.sellorder.mapper;

import org.springframework.stereotype.Repository;

import net.linghou.erp.sellorder.domain.SalesOrder;

@Repository
public interface SellOrderMapper {
	public SalesOrder findOne(Long id );
	public Long register(SalesOrder order);
	public int update(SalesOrder order );

}