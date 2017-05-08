package net.linghou.erp.sellorder.domain;

/** 订单来源类 */
public class SellOrderSource {
	/** 订单来源ID */
	private int sellOrderSourceId;
	/** 订单来源名称 */
	private String sellOrderSourceName;

	public int getSellOrderSourceId() {
		return sellOrderSourceId;
	}

	public void setSellOrderSourceId(int sellOrderSourceId) {
		this.sellOrderSourceId = sellOrderSourceId;
	}

	public String getSellOrderSourceName() {
		return sellOrderSourceName;
	}

	public void setSellOrderSourceName(String sellOrderSourceName) {
		this.sellOrderSourceName = sellOrderSourceName;
	}

}
