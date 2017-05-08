package net.linghou.erp.sellorder.domain;

/** 物流公司类 */
public class Logistics {
	/** 物流公司ID */
	private int logisticsId;
	/** 物流公司名称 */
	private String logisticsName;

	public int getLogisticsId() {
		return logisticsId;
	}

	public void setLogisticsId(int logisticsId) {
		this.logisticsId = logisticsId;
	}

	public String getLogisticsName() {
		return logisticsName;
	}

	public void setLogisticsName(String logisticsName) {
		this.logisticsName = logisticsName;
	}
}
