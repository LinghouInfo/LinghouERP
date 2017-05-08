package net.linghou.erp.sellorder.domain;

/** 付款方式类 */
public class PayMentTerm {
	/** 付款方式ID */
	private int payMentTermId;
	/** 付款方式名称 */
	private String payMentTermName;

	public int getPayMentTermId() {
		return payMentTermId;
	}

	public void setPayMentTermId(int payMentTermId) {
		this.payMentTermId = payMentTermId;
	}

	public String getPayMentTermName() {
		return payMentTermName;
	}

	public void setPayMentTermName(String payMentTermName) {
		this.payMentTermName = payMentTermName;
	}

}
