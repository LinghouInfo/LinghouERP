package net.linghou.erp.salesorder.domain;

import java.math.BigDecimal;

public class SellOrder {
	/** erp订单ID */
	private String orderId;
	/**
	 * 交易状态。可选值: * TRADE_NO_CREATE_PAY(没有创建支付宝交易) * WAIT_BUYER_PAY(等待买家付款) *
	 * SELLER_CONSIGNED_PART(卖家部分发货) * WAIT_SELLER_SEND_GOODS(等待卖家发货,即:买家已付款) *
	 * WAIT_BUYER_CONFIRM_GOODS(等待买家确认收货,即:卖家已发货) *
	 * TRADE_BUYER_SIGNED(买家已签收,货到付款专用) * TRADE_FINISHED(交易成功) *
	 * TRADE_CLOSED(付款以后用户退款成功，交易自动关闭) *
	 * TRADE_CLOSED_BY_TAOBAO(付款以前，卖家或买家主动关闭交易) * PAY_PENDING(国际信用卡支付付款确认中) *
	 * WAIT_PRE_AUTH_CONFIRM(0元购合约中)
	 */
	private ValueSOStatus status;
	/**
	 * 退款状态。可选值 WAIT_SELLER_AGREE(买家已经申请退款，等待卖家同意)
	 * WAIT_BUYER_RETURN_GOODS(卖家已经同意退款，等待买家退货)
	 * WAIT_SELLER_CONFIRM_GOODS(买家已经退货，等待卖家确认收货)
	 * WAIT_SELLER_REFUND(卖家已收到退货，等待卖家退款) SELLER_REFUSE_BUYER(卖家拒绝退款)
	 * CLOSED(退款关闭) SUCCESS(退款成功)
	 */
	private RefundStatus refundStatus;
	/** 处理天数 */
	private Integer takeDays;
	/** 买家呢称 */
	private String buyerNick;
	/** erp标志，系统初始货时设定，用于在界面上显著显示特殊订单 */
	private int erpMark;
	/** 卖家备注旗帜（与淘宝网上订单的卖家备注旗帜对应，只有卖家才能查看该字段）红、黄、绿、蓝、紫 分别对应 1、2、3、4、5 */
	private Flag sellerFlag;
	/** 该帐号此前购买次数（含本次） */
	private Integer buyTimes;
	/** 收件人姓名 */
	private String receiverName;
	/** 联系电话 */
	private String receiverPhone;
	/** 国家 */
	private String receiverCountry;
	/** 省份 */
	private String receiverState;
	/** 城市 */
	private String receiverCity;
	/** 区/县 */
	private String receiverDistrict;
	/** 详细地址 */
	private String receiverAddress;
	/** 完整收件地址 */
	private String receiverShippingAddress;
	/** 邮编 */
	private String receiverZip;
	/** 购买商品总数 */
	private Integer totalNumber;
	/** 总金额（未打折金额） */
	private BigDecimal totalAccount;
	/** 全部折扣金额 */
	private BigDecimal discount;
	/** 手工改价金额 */
	private BigDecimal balance;
	/** 优惠总计 */
	private BigDecimal totalDiscount;
	/** 应付合计，应该等于实收合计 */
	private BigDecimal sum;
	/** 实收合计，应该等于应付合计 */
	private BigDecimal payment;
	/** 退款总计 */
	private BigDecimal refund;
	/** 实收邮资 */
	private BigDecimal freightReceived;
	/** 应付邮资 */
	private BigDecimal freightSum;
	/** 实付邮资 */
	private BigDecimal freightPaid;
	/** 仓库服务费 */
	private BigDecimal storageCharges;
	/** 平台服务费 */
	private BigDecimal platformCharges;
	/** 已销售产品成本，仅指产品在仓库时的成本，不含有销售成本及服务费 */
	private BigDecimal cogs;
	/** 成本合计 */
	private BigDecimal totalCost;
	/** 付款帐号 */
	private String payAccount;
	/** 到帐状态 */
	private String paymentStatus;
	/** 到帐金额 */
	private BigDecimal paidIn;
	/** 支付手续费，信用卡、花呗、白条等 */
	private BigDecimal handlingCharge;
	/** 付款帐单号 */
	private String paymentNumber;
	/** 订单利润 */
	private BigDecimal profit;
	/** 预计重量，所有单品重量之和 */
	private BigDecimal weight;
	/** 实际总重，称重时的实重 */
	private BigDecimal grossWeight;
	/** 是否称重 */
	private Boolean isWeighed;
	/** 物流公司Id */
	private Long logisticsID;
	/** 物流公司名称 */
	private String logisticsName;
	/** 物流单号 */
	private String trackingNo;
	/** 订单来源Id，指ERP系统中存储的平台ID */
	private Long sourceId;
	/** 订单来源名称，指平台名称 */
	private String sourceName;
	/** 店铺Id */
	private Long shopId;
	/** 店铺名称 */
	private String shopName;
	/** 来源单号，指淘宝、天猫、京东平台生成的原始单号 */
	private String srcOrderNo;
	/** API、手工、售后等方式 */
	private String createType;
	/** 付款时间 */
	private java.util.Date payedTime;
	/** 订单创建时间，和原始订单的创建时间一致 */
	private java.util.Date created;
	/** 录入时间，原始订单进入ERP之后，系统登记为ERP SellOrder订单的时间 */
	private java.util.Date inputedTime;
	/** 审核时间 */
	private java.util.Date confirmedTime;
	/** 打印时间 */
	private java.util.Date printedTime;
	/** 配货时间 */
	private java.util.Date preparedTime;
	/** 出库时间 */
	private java.util.Date stockOutTime;
	/** weighedTime */
	private java.util.Date weighedTime;
	/** 发货时间 */
	private java.util.Date shippedTime;
	/** 打印批次 */
	private String printBatch;
	/** 打印序号 */
	private int printNo;
	/** 配货单号 */
	private String prepareNo;
	/** 是否需要发票，0：否，1：是 */
	private Boolean needInvoice;
	/** 发票抬头 */
	private String invoiceTitle;
	/** 发票内容 */
	private String invoiceContent;
	/** 是否已打印发票 */
	private Boolean isInvoicePrinted;
	/** 发票编号 */
	private String invoiceCode;
	/** 付款方式 */
	private String paymentTerms;
	/** 发货仓库Id */
	private Long warehouseId;
	/** 发货仓库名称 */
	private String warehouseName;
	/** 业务员 */
	private String salesman;
	/** 审单员 */
	private String comfirmOpr;
	/** 配货员 */
	private String pickOpr;
	/** 配货错误次数 */
	private int pickWrongTimes;
	/** 验货员 */
	private String validateOpr;
	/** 打包员 */
	private String packOpr;
	/** 结算员 */
	private String accountOpr;
	/** 发货员 */
	private String deliverOpr;
	/** 是否有买家备注 */
	private Boolean hasBuyerMemo;
	/** 买家备注 */
	private String buyerMemo;
	/** 是否有客服备注 */
	private Boolean hasSellerMemo;
	/** 客服备注 */
	private String sellerMemo;
	/** 打印备注 */
	private String printMemo;
	/** 货品摘要 */
	private String itemsSummary;
	/** 最后修改时间 */
	private java.sql.Timestamp lastModifiedTime;
	private String def1;
	private String def2;
	private String def3;
	private String def4;
	private String def5;

	public java.util.List<SellOrderItem> sellOrderItem;
	public ValueSOStatus valueSOStatus;

	/** @pdGenerated default getter */
	public java.util.List<SellOrderItem> getSellOrderItem() {
		if (sellOrderItem == null)
			sellOrderItem = new java.util.ArrayList<SellOrderItem>();
		return sellOrderItem;
	}

	/** @pdGenerated default iterator getter */
	public java.util.Iterator getIteratorSellOrderItem() {
		if (sellOrderItem == null)
			sellOrderItem = new java.util.ArrayList<SellOrderItem>();
		return sellOrderItem.iterator();
	}

	/**
	 * @pdGenerated default setter
	 * @param newSellOrderItem
	 */
	public void setSellOrderItem(java.util.List<SellOrderItem> newSellOrderItem) {
		removeAllSellOrderItem();
		for (java.util.Iterator iter = newSellOrderItem.iterator(); iter.hasNext();)
			addSellOrderItem((SellOrderItem) iter.next());
	}

	/**
	 * @pdGenerated default add
	 * @param newSellOrderItem
	 */
	public void addSellOrderItem(SellOrderItem newSellOrderItem) {
		if (newSellOrderItem == null)
			return;
		if (this.sellOrderItem == null)
			this.sellOrderItem = new java.util.ArrayList<SellOrderItem>();
		if (!this.sellOrderItem.contains(newSellOrderItem))
			this.sellOrderItem.add(newSellOrderItem);
	}

	/**
	 * @pdGenerated default remove
	 * @param oldSellOrderItem
	 */
	public void removeSellOrderItem(SellOrderItem oldSellOrderItem) {
		if (oldSellOrderItem == null)
			return;
		if (this.sellOrderItem != null)
			if (this.sellOrderItem.contains(oldSellOrderItem))
				this.sellOrderItem.remove(oldSellOrderItem);
	}

	/** @pdGenerated default removeAll */
	public void removeAllSellOrderItem() {
		if (sellOrderItem != null)
			sellOrderItem.clear();
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public ValueSOStatus getStatus() {
		return status;
	}

	public void setStatus(ValueSOStatus status) {
		this.status = status;
	}

	public RefundStatus getRefundStatus() {
		return refundStatus;
	}

	public void setRefundStatus(RefundStatus refundStatus) {
		this.refundStatus = refundStatus;
	}

	public Integer getTakeDays() {
		return takeDays;
	}

	public void setTakeDays(Integer takeDays) {
		this.takeDays = takeDays;
	}

	public String getBuyerNick() {
		return buyerNick;
	}

	public void setBuyerNick(String buyerNick) {
		this.buyerNick = buyerNick;
	}

	public int getErpMark() {
		return erpMark;
	}

	public void setErpMark(int erpMark) {
		this.erpMark = erpMark;
	}

	public Flag getSellerFlag() {
		return sellerFlag;
	}

	public void setSellerFlag(Flag sellerFlag) {
		this.sellerFlag = sellerFlag;
	}

	public Integer getBuyTimes() {
		return buyTimes;
	}

	public void setBuyTimes(Integer buyTimes) {
		this.buyTimes = buyTimes;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public String getReceiverPhone() {
		return receiverPhone;
	}

	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}

	public String getReceiverCountry() {
		return receiverCountry;
	}

	public void setReceiverCountry(String receiverCountry) {
		this.receiverCountry = receiverCountry;
	}

	public String getReceiverState() {
		return receiverState;
	}

	public void setReceiverState(String receiverState) {
		this.receiverState = receiverState;
	}

	public String getReceiverCity() {
		return receiverCity;
	}

	public void setReceiverCity(String receiverCity) {
		this.receiverCity = receiverCity;
	}

	public String getReceiverDistrict() {
		return receiverDistrict;
	}

	public void setReceiverDistrict(String receiverDistrict) {
		this.receiverDistrict = receiverDistrict;
	}

	public String getReceiverAddress() {
		return receiverAddress;
	}

	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}

	public String getReceiverShippingAddress() {
		return receiverShippingAddress;
	}

	public void setReceiverShippingAddress(String receiverShippingAddress) {
		this.receiverShippingAddress = receiverShippingAddress;
	}

	public String getReceiverZip() {
		return receiverZip;
	}

	public void setReceiverZip(String receiverZip) {
		this.receiverZip = receiverZip;
	}

	public Integer getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(Integer totalNumber) {
		this.totalNumber = totalNumber;
	}

	public BigDecimal getTotalAccount() {
		return totalAccount;
	}

	public void setTotalAccount(BigDecimal totalAccount) {
		this.totalAccount = totalAccount;
	}

	public BigDecimal getDiscount() {
		return discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public BigDecimal getTotalDiscount() {
		return totalDiscount;
	}

	public void setTotalDiscount(BigDecimal totalDiscount) {
		this.totalDiscount = totalDiscount;
	}

	public BigDecimal getSum() {
		return sum;
	}

	public void setSum(BigDecimal sum) {
		this.sum = sum;
	}

	public BigDecimal getPayment() {
		return payment;
	}

	public void setPayment(BigDecimal payment) {
		this.payment = payment;
	}

	public BigDecimal getRefund() {
		return refund;
	}

	public void setRefund(BigDecimal refund) {
		this.refund = refund;
	}

	public BigDecimal getFreightReceived() {
		return freightReceived;
	}

	public void setFreightReceived(BigDecimal freightReceived) {
		this.freightReceived = freightReceived;
	}

	public BigDecimal getFreightSum() {
		return freightSum;
	}

	public void setFreightSum(BigDecimal freightSum) {
		this.freightSum = freightSum;
	}

	public BigDecimal getFreightPaid() {
		return freightPaid;
	}

	public void setFreightPaid(BigDecimal freightPaid) {
		this.freightPaid = freightPaid;
	}

	public BigDecimal getStorageCharges() {
		return storageCharges;
	}

	public void setStorageCharges(BigDecimal storageCharges) {
		this.storageCharges = storageCharges;
	}

	public BigDecimal getPlatformCharges() {
		return platformCharges;
	}

	public void setPlatformCharges(BigDecimal platformCharges) {
		this.platformCharges = platformCharges;
	}

	public BigDecimal getCogs() {
		return cogs;
	}

	public void setCogs(BigDecimal cogs) {
		this.cogs = cogs;
	}

	public BigDecimal getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(BigDecimal totalCost) {
		this.totalCost = totalCost;
	}

	public String getPayAccount() {
		return payAccount;
	}

	public void setPayAccount(String payAccount) {
		this.payAccount = payAccount;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public BigDecimal getPaidIn() {
		return paidIn;
	}

	public void setPaidIn(BigDecimal paidIn) {
		this.paidIn = paidIn;
	}

	public BigDecimal getHandlingCharge() {
		return handlingCharge;
	}

	public void setHandlingCharge(BigDecimal handlingCharge) {
		this.handlingCharge = handlingCharge;
	}

	public String getPaymentNumber() {
		return paymentNumber;
	}

	public void setPaymentNumber(String paymentNumber) {
		this.paymentNumber = paymentNumber;
	}

	public BigDecimal getProfit() {
		return profit;
	}

	public void setProfit(BigDecimal profit) {
		this.profit = profit;
	}

	public BigDecimal getWeight() {
		return weight;
	}

	public void setWeight(BigDecimal weight) {
		this.weight = weight;
	}

	public BigDecimal getGrossWeight() {
		return grossWeight;
	}

	public void setGrossWeight(BigDecimal grossWeight) {
		this.grossWeight = grossWeight;
	}

	public Boolean getIsWeighed() {
		return isWeighed;
	}

	public void setIsWeighed(Boolean isWeighed) {
		this.isWeighed = isWeighed;
	}

	public Long getLogisticsID() {
		return logisticsID;
	}

	public void setLogisticsID(Long logisticsID) {
		this.logisticsID = logisticsID;
	}

	public String getLogisticsName() {
		return logisticsName;
	}

	public void setLogisticsName(String logisticsName) {
		this.logisticsName = logisticsName;
	}

	public String getTrackingNo() {
		return trackingNo;
	}

	public void setTrackingNo(String trackingNo) {
		this.trackingNo = trackingNo;
	}

	public Long getSourceId() {
		return sourceId;
	}

	public void setSourceId(Long sourceId) {
		this.sourceId = sourceId;
	}

	public String getSourceName() {
		return sourceName;
	}

	public void setSourceName(String sourceName) {
		this.sourceName = sourceName;
	}

	public Long getShopId() {
		return shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getSrcOrderNo() {
		return srcOrderNo;
	}

	public void setSrcOrderNo(String srcOrderNo) {
		this.srcOrderNo = srcOrderNo;
	}

	public String getCreateType() {
		return createType;
	}

	public void setCreateType(String createType) {
		this.createType = createType;
	}

	public java.util.Date getPayedTime() {
		return payedTime;
	}

	public void setPayedTime(java.util.Date payedTime) {
		this.payedTime = payedTime;
	}

	public java.util.Date getCreated() {
		return created;
	}

	public void setCreated(java.util.Date created) {
		this.created = created;
	}

	public java.util.Date getInputedTime() {
		return inputedTime;
	}

	public void setInputedTime(java.util.Date inputedTime) {
		this.inputedTime = inputedTime;
	}

	public java.util.Date getConfirmedTime() {
		return confirmedTime;
	}

	public void setConfirmedTime(java.util.Date confirmedTime) {
		this.confirmedTime = confirmedTime;
	}

	public java.util.Date getPrintedTime() {
		return printedTime;
	}

	public void setPrintedTime(java.util.Date printedTime) {
		this.printedTime = printedTime;
	}

	public java.util.Date getPreparedTime() {
		return preparedTime;
	}

	public void setPreparedTime(java.util.Date preparedTime) {
		this.preparedTime = preparedTime;
	}

	public java.util.Date getStockOutTime() {
		return stockOutTime;
	}

	public void setStockOutTime(java.util.Date stockOutTime) {
		this.stockOutTime = stockOutTime;
	}

	public java.util.Date getWeighedTime() {
		return weighedTime;
	}

	public void setWeighedTime(java.util.Date weighedTime) {
		this.weighedTime = weighedTime;
	}

	public java.util.Date getShippedTime() {
		return shippedTime;
	}

	public void setShippedTime(java.util.Date shippedTime) {
		this.shippedTime = shippedTime;
	}

	public String getPrintBatch() {
		return printBatch;
	}

	public void setPrintBatch(String printBatch) {
		this.printBatch = printBatch;
	}

	public int getPrintNo() {
		return printNo;
	}

	public void setPrintNo(int printNo) {
		this.printNo = printNo;
	}

	public String getPrepareNo() {
		return prepareNo;
	}

	public void setPrepareNo(String prepareNo) {
		this.prepareNo = prepareNo;
	}

	public Boolean getNeedInvoice() {
		return needInvoice;
	}

	public void setNeedInvoice(Boolean needInvoice) {
		this.needInvoice = needInvoice;
	}

	public String getInvoiceTitle() {
		return invoiceTitle;
	}

	public void setInvoiceTitle(String invoiceTitle) {
		this.invoiceTitle = invoiceTitle;
	}

	public String getInvoiceContent() {
		return invoiceContent;
	}

	public void setInvoiceContent(String invoiceContent) {
		this.invoiceContent = invoiceContent;
	}

	public Boolean getIsInvoicePrinted() {
		return isInvoicePrinted;
	}

	public void setIsInvoicePrinted(Boolean isInvoicePrinted) {
		this.isInvoicePrinted = isInvoicePrinted;
	}

	public String getInvoiceCode() {
		return invoiceCode;
	}

	public void setInvoiceCode(String invoiceCode) {
		this.invoiceCode = invoiceCode;
	}

	public String getPaymentTerms() {
		return paymentTerms;
	}

	public void setPaymentTerms(String paymentTerms) {
		this.paymentTerms = paymentTerms;
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

	public String getSalesman() {
		return salesman;
	}

	public void setSalesman(String salesman) {
		this.salesman = salesman;
	}

	public String getComfirmOpr() {
		return comfirmOpr;
	}

	public void setComfirmOpr(String comfirmOpr) {
		this.comfirmOpr = comfirmOpr;
	}

	public String getPickOpr() {
		return pickOpr;
	}

	public void setPickOpr(String pickOpr) {
		this.pickOpr = pickOpr;
	}

	public int getPickWrongTimes() {
		return pickWrongTimes;
	}

	public void setPickWrongTimes(int pickWrongTimes) {
		this.pickWrongTimes = pickWrongTimes;
	}

	public String getValidateOpr() {
		return validateOpr;
	}

	public void setValidateOpr(String validateOpr) {
		this.validateOpr = validateOpr;
	}

	public String getPackOpr() {
		return packOpr;
	}

	public void setPackOpr(String packOpr) {
		this.packOpr = packOpr;
	}

	public String getAccountOpr() {
		return accountOpr;
	}

	public void setAccountOpr(String accountOpr) {
		this.accountOpr = accountOpr;
	}

	public String getDeliverOpr() {
		return deliverOpr;
	}

	public void setDeliverOpr(String deliverOpr) {
		this.deliverOpr = deliverOpr;
	}

	public Boolean getHasBuyerMemo() {
		return hasBuyerMemo;
	}

	public void setHasBuyerMemo(Boolean hasBuyerMemo) {
		this.hasBuyerMemo = hasBuyerMemo;
	}

	public String getBuyerMemo() {
		return buyerMemo;
	}

	public void setBuyerMemo(String buyerMemo) {
		this.buyerMemo = buyerMemo;
	}

	public Boolean getHasSellerMemo() {
		return hasSellerMemo;
	}

	public void setHasSellerMemo(Boolean hasSellerMemo) {
		this.hasSellerMemo = hasSellerMemo;
	}

	public String getSellerMemo() {
		return sellerMemo;
	}

	public void setSellerMemo(String sellerMemo) {
		this.sellerMemo = sellerMemo;
	}

	public String getPrintMemo() {
		return printMemo;
	}

	public void setPrintMemo(String printMemo) {
		this.printMemo = printMemo;
	}

	public String getItemsSummary() {
		return itemsSummary;
	}

	public void setItemsSummary(String itemsSummary) {
		this.itemsSummary = itemsSummary;
	}

	public java.sql.Timestamp getLastModifiedTime() {
		return lastModifiedTime;
	}

	public void setLastModifiedTime(java.sql.Timestamp lastModifiedTime) {
		this.lastModifiedTime = lastModifiedTime;
	}

	public String getDef1() {
		return def1;
	}

	public void setDef1(String def1) {
		this.def1 = def1;
	}

	public String getDef2() {
		return def2;
	}

	public void setDef2(String def2) {
		this.def2 = def2;
	}

	public String getDef3() {
		return def3;
	}

	public void setDef3(String def3) {
		this.def3 = def3;
	}

	public String getDef4() {
		return def4;
	}

	public void setDef4(String def4) {
		this.def4 = def4;
	}

	public String getDef5() {
		return def5;
	}

	public void setDef5(String def5) {
		this.def5 = def5;
	}

	public ValueSOStatus getValueSOStatus() {
		return valueSOStatus;
	}

	public void setValueSOStatus(ValueSOStatus valueSOStatus) {
		this.valueSOStatus = valueSOStatus;
	}

}