package net.linghou.erp.sellorder.domain;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.List;
import com.sun.xml.internal.xsom.impl.scd.Iterators.Map;

public class SellOrderItem {
	/** 订单项目Id 自增列 */
	private int itemId;
	/** 订单Id */
	private int orderId;
	/** 仓库Id */
	private Long warehouseId;
	/** warehouseName */
	private String warehouseName;
	/** spuCode */
	private String spuCode;
	/** spuName */
	private String spuName;
	/** spec编码 */
	private String specCode;
	/** spec名称 */
	private String specName;
	/** spec条码 */
	private String specBarcode;
	/** sku编码 */
	private String skuCode;
	/** sku摘要 */
	private String skuSummary;
	/** 购买数量 */
	private int num;
	/** 已发数量 */
	private int sendNum;
	/** 是否实物商品 */
	private Boolean isReal;
	/** 是否赠品 */
	private Boolean isGift;
	/** 平台spu编码 */
	private String platformSpuCode;
	/** 平台spu名称 */
	private String platformSpuName;
	/** 平台spec编码 */
	private String platformSpecCode;
	/** 平台spec名称 */
	private String platformSpecName;
	/** 原价(吊牌ORIG.) */
	private BigDecimal originalPrice;
	/** 该spu spec（在本仓库中的）加权平均价，根据不同计算方法，加权平均价有所不同 */
	private BigDecimal vwaPrice;
	/** 采购单上的采购价，当sku只有一个采购项目时，该sku可以记录采购单上的采购价格 */
	private BigDecimal purchasePrice;
	/** 优惠分摊 */
	private BigDecimal discountMoney;
	/** 入帐成本价 */
	private BigDecimal costPrice;
	/** 总价金额 */
	private BigDecimal totalAccount;
	/** 最终折后价 */
	private BigDecimal sum;
	/** 项目利润 */
	private BigDecimal projectProfit;
	private HashSet<Spec> spec;

	@Override
	public boolean equals(Object object) {
		if (this.specCode.equals(((SellOrderItem) object).getSpecCode())) {
			return true;
		} else {
			return false;
		}
	}

	public void addSpec(Spec newSpec) {

		if (newSpec == null) {
			return;
		}
		if (this.spec == null) {
			this.spec = new HashSet<Spec>();
		}

		if (!this.spec.contains(newSpec)) {

			this.spec.add(newSpec);

		}

	}

	public void removeSpec(Spec oldSpec) {
		if (this.spec == null)
			return;
		if (this.spec != null)
			if (this.spec.contains(oldSpec))
				this.spec.remove(oldSpec);
	}

	public HashSet<Spec> getSpec() {
		return spec;
	}

	public void setSpec(HashSet<Spec> spec) {
		this.spec = spec;
	}

	/** 子项集合 */
	@SuppressWarnings("rawtypes")
	private Map orderItems;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Long getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(Long warehouseId) {
		this.warehouseId = warehouseId;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	public String getSpuCode() {
		return spuCode;
	}

	public void setSpuCode(String spuCode) {
		this.spuCode = spuCode;
	}

	public String getSpuName() {
		return spuName;
	}

	public void setSpuName(String spuName) {
		this.spuName = spuName;
	}

	public String getSpecCode() {
		return specCode;
	}

	public void setSpecCode(String specCode) {
		this.specCode = specCode;
	}

	public String getSpecName() {
		return specName;
	}

	public void setSpecName(String specName) {
		this.specName = specName;
	}

	public String getSpecBarcode() {
		return specBarcode;
	}

	public void setSpecBarcode(String specBarcode) {
		this.specBarcode = specBarcode;
	}

	public String getSkuCode() {
		return skuCode;
	}

	public void setSkuCode(String skuCode) {
		this.skuCode = skuCode;
	}

	public String getSkuSummary() {
		return skuSummary;
	}

	public void setSkuSummary(String skuSummary) {
		this.skuSummary = skuSummary;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getSendNum() {
		return sendNum;
	}

	public void setSendNum(int sendNum) {
		this.sendNum = sendNum;
	}

	public Boolean getIsReal() {
		return isReal;
	}

	public void setIsReal(Boolean isReal) {
		this.isReal = isReal;
	}

	public Boolean getIsGift() {
		return isGift;
	}

	public void setIsGift(Boolean isGift) {
		this.isGift = isGift;
	}

	public String getPlatformSpuCode() {
		return platformSpuCode;
	}

	public void setPlatformSpuCode(String platformSpuCode) {
		this.platformSpuCode = platformSpuCode;
	}

	public String getPlatformSpuName() {
		return platformSpuName;
	}

	public void setPlatformSpuName(String platformSpuName) {
		this.platformSpuName = platformSpuName;
	}

	public String getPlatformSpecCode() {
		return platformSpecCode;
	}

	public void setPlatformSpecCode(String platformSpecCode) {
		this.platformSpecCode = platformSpecCode;
	}

	public String getPlatformSpecName() {
		return platformSpecName;
	}

	public void setPlatformSpecName(String platformSpecName) {
		this.platformSpecName = platformSpecName;
	}

	public BigDecimal getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(BigDecimal originalPrice) {
		this.originalPrice = originalPrice;
	}

	public BigDecimal getVwaPrice() {
		return vwaPrice;
	}

	public void setVwaPrice(BigDecimal vwaPrice) {
		this.vwaPrice = vwaPrice;
	}

	public BigDecimal getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(BigDecimal purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public BigDecimal getDiscountMoney() {
		return discountMoney;
	}

	public void setDiscountMoney(BigDecimal discountMoney) {
		this.discountMoney = discountMoney;
	}

	public BigDecimal getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(BigDecimal costPrice) {
		this.costPrice = costPrice;
	}

	public BigDecimal getTotalAccount() {
		return totalAccount;
	}

	public void setTotalAccount(BigDecimal totalAccount) {
		this.totalAccount = totalAccount;
	}

	public BigDecimal getSum() {
		return sum;
	}

	public void setSum(BigDecimal sum) {
		this.sum = sum;
	}

	public BigDecimal getProjectProfit() {
		return projectProfit;
	}

	public void setProjectProfit(BigDecimal projectProfit) {
		this.projectProfit = projectProfit;
	}

	public Map getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(Map orderItems) {
		this.orderItems = orderItems;
	}

}
