package net.linghou.erp.config.api.impl;

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

import net.linghou.erp.sellorder.domain.Areas;
import net.linghou.erp.sellorder.domain.SellOrderItem;
import net.linghou.erp.sellorder.mapper.AreasMapper;

@Controller
@ResponseBody
@RequestMapping(path = "/")
public class ConfigApiImpl implements net.linghou.erp.config.api.LocalApi{

}