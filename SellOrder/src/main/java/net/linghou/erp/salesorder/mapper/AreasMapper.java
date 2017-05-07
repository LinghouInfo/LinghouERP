package net.linghou.erp.salesorder.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.linghou.erp.salesorder.domain.Areas;
@Repository
public interface AreasMapper {
	public List<Areas> findAll();
}
