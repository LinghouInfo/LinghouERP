package net.linghou.erp.config.api.impl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ResponseBody
@RequestMapping(path = "/")
public class ConfigApiImpl implements net.linghou.erp.config.api.LocalApi{

}