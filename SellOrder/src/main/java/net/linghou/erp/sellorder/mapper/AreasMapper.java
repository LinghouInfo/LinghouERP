package net.linghou.erp.sellorder.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.linghou.erp.sellorder.domain.Areas;

@Repository
public interface AreasMapper {
	public List<Areas> findAll();
}
