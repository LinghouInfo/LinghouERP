package net.linghou.erp.config.domain;

/** 旗帜类 */
public class Flag {
	/** 旗帜ID */
	private int flagId;
	/** 旗帜名称 */
	private String flagName;

	public int getFlagId() {
		return flagId;
	}

	public void setFlagId(int flagId) {
		this.flagId = flagId;
	}

	public String getFlagName() {
		return flagName;
	}

	public void setFlagName(String flagName) {
		this.flagName = flagName;
	}

	public Flag(int flagId, String flagName) {
		super();
		this.flagId = flagId;
		this.flagName = flagName;
	}

	public Flag() {
		super();
		// TODO Auto-generated constructor stub
	}

}
