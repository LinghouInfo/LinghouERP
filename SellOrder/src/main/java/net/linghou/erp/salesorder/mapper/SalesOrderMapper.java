package net.linghou.erp.salesorder.mapper;

import org.springframework.stereotype.Repository;
import net.linghou.erp.salesorder.domain.SalesOrder;

@Repository
public interface SalesOrderMapper {
	public SalesOrder findOne(Long id );
	public Long register(SalesOrder order);
	public int update(SalesOrder order );

}