package net.linghou.erp.sellorder.domain;

import java.math.BigDecimal;
import java.util.Map;

public class SellOrderItem {
	/** 璁㈠崟椤圭洰Id */
	private String itemId;
	/** 璁㈠崟Id */
	private String orderId;
	/** 浠撳簱Id */
	private Long warehouseId;
	/** warehouseName */
	private String warehouseName;
	/** spuCode */
	private String spuCode;
	/** spuName */
	private String spuName;
	/** spec缂栫爜 */
	private String specCode;
	/** spec鍚嶇О */
	private String specName;
	/** spec鏉＄爜 */
	private String specBarcode;
	/** sku缂栫爜 */
	private String skuCode;
	/** sku鎽樿 */
	private String skuSummary;
	/** 璐拱鏁伴噺 */
	private int num;
	/** 宸插彂鏁伴噺 */
	private int sendNum;
	/** 鏄惁瀹炵墿鍟嗗搧 */
	private Boolean isReal;
	/** 鏄惁璧犲搧 */
	private Boolean isGift;
	/** 骞冲彴spu缂栫爜 */
	private String platformSpuCode;
	/** 骞冲彴spu鍚嶇О */
	private String platformSpuName;
	/** 骞冲彴spec缂栫爜 */
	private String platformSpecCode;
	/** 骞冲彴spec鍚嶇О */
	private String platformSpecName;
	/** 鍘熶环(鍚婄墝ORIG.) */
	private BigDecimal originalPrice;
	/** 璇pu spec锛堝湪鏈粨搴撲腑鐨勶級鍔犳潈骞冲潎浠凤紝鏍规嵁涓嶅悓璁＄畻鏂规硶锛屽姞鏉冨钩鍧囦环鏈夋墍涓嶅悓 */
	private BigDecimal vwaPrice;
	/** 閲囪喘鍗曚笂鐨勯噰璐环锛屽綋sku鍙湁涓�涓噰璐」鐩椂锛岃sku鍙互璁板綍閲囪喘鍗曚笂鐨勯噰璐环鏍� */
	private BigDecimal purchasePrice;
	/** 浼樻儬鍒嗘憡 */
	private BigDecimal discountMoney;
	/** 鍏ュ笎鎴愭湰浠� */
	private BigDecimal costPrice;
	/** 鎬讳环閲戦 */
	private BigDecimal totalAccount;
	/** 鏈�缁堟姌鍚庝环 */
	private BigDecimal sum;
	/** 椤圭洰鍒╂鼎 */
	private BigDecimal projectProfit;
	/** 瀛愰」闆嗗悎 */
	@SuppressWarnings("rawtypes")
	private Map orderItems;


	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
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
