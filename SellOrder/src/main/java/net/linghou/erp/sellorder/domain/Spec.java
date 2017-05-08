package net.linghou.erp.sellorder.domain;

/** 规格类 */
public class Spec {
	/** 规格id */
	private Long id;
	/** spu编码 */
	private String spuCode;
	/** spec名称 */
	private String specName;
	/** 规格编码 */
	private String specCode;
	/** 规格条码 */
	private String specBarcode;

	@Override
	public boolean equals(Object spec) {
		if (this.specCode.equals(((Spec) spec).getSpecCode())) {
			return true;
		} else {
			return false;
		}
	}

	public String getSpecCode() {
		return specCode;
	}

	public void setSpecCode(String specCode) {
		this.specCode = specCode;
	}

	public String getSpecBarcode() {
		return specBarcode;
	}

	public void setSpecBarcode(String specBarcode) {
		this.specBarcode = specBarcode;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSpuCode() {
		return spuCode;
	}

	public void setSpuCode(String spuCode) {
		this.spuCode = spuCode;
	}

	public String getSpecName() {
		return specName;
	}

	public void setSpecName(String specName) {
		this.specName = specName;
	}

}
