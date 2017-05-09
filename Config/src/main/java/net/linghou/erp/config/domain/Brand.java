package net.linghou.erp.config.domain;

import java.io.Serializable;
/**
 * 品牌类
 * */
public class Brand implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**品牌名称*/
	private String brandName;
	/**序号*/
	private String serialNumber;
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	
	
}
