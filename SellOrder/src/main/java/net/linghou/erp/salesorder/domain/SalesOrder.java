package net.linghou.erp.salesorder.domain;
import java.lang.Boolean;
//import SalesOrderItem;
import java.math.BigDecimal;
import java.util.Date;

public class SalesOrder{
    // public SalesOrderItem salesOrderItem;
	//公司订单编号
    private String erpOrderId;
    //当前订单状态
    private String orderState;
    //客户网名
    private String customerName ;
    //支付账号
    private String paymentAccount;
    //处理天数
    private int handleDays;
    //客户购买次数
    private int purchaseTimes;
    //电话
    private int telephone;
    //收件人
    private String addressee;
    //省份
    private String province;
    //城市
    private String city;
    //区县
    private String county;
    //地址
    private String address;
    //邮编
    private int zipCode;
    //货品总数
    private int totalGoods;
    //货款合计
    private BigDecimal totalLoan;
    //优惠金额
    private BigDecimal discountAmount;
    //税收
    private BigDecimal taxRevenue;
    //补偿退款
    private BigDecimal compensationRefund;
    //货品总成本
    private BigDecimal totalCostOfGoods;
    //总成本
    private BigDecimal totalCost;
    //到账状态
    private String arrivalStatus;
    //到账总额
    private BigDecimal arrivalTotalMoney;
    //到账其他费用
    private BigDecimal arrivalOtherExpenses;
    //已到账单号
    private String billOfArrival;
    //预估重量
    private BigDecimal estimatedWeight;
    //重量
    private BigDecimal weight;
    //货运单号
    private String freightWaybill;
    //交易时间
    private Date tradingTime;
    //付款时间
    private Date paymentTime;
    //审核时间
    private Date auditTime;
    //登记时间
    private Date registrationTime;
    //发货时间
    private Date deliveryTime;
    //来源单号
    private String sourceNumber;
    //货品摘要
    private String productSummary;
    //支付单号
    private String paymentOrder;
    //客户备注
    private String customerRemarks;
    //自定义1
    private String custom1;
    //自定义2
    private String custom2;
    //自定义3
    private String custom3;
    //自定义4
    private String custom4;
    //自定义5
    private String custom5;

   /* private String source;

      private String sourceId;

      private Long salesOrderId;
    */
    //标记
    private String sign;
    //金额变更
    private BigDecimal moneyChange;
    //应收邮资
    private BigDecimal postageReceivable;
    //应付邮资
    private BigDecimal postagePayable;
    //应收合计
    private BigDecimal totalReceivables;
    //实收金额
    private BigDecimal paidInAmount;
    //仓储佣金
    private BigDecimal warehouseCommission;
    //平台交易佣金
    private BigDecimal platformTradingCommission;
    //毛利
    private BigDecimal grossProfit;
    //物流公司
    private String logisticsCompany;
    //所在店铺
    private String shopLocation;
    //订单类型
    private String orderType;
    //订单来源		
    private String orderSource;
    //打单时间
    private Date singleTime;
    //拣货时间
    private Date rickingTime;
    //出货时间
    private Date outboundTime;
    //称重时间
    private Date weighingTime;
    //是否称重
    private Boolean weighing;
    //打印批次
    private String printBatch;
    //打印序号
    private int printSerialNumber;
    //分拣单号
    private String sortingNumber;
    //是否要发票
    private Boolean doYouWantToInvoice;
    //发票抬头
    private String invoiceHeader;
    //发票内容
    private String invoiceContent;
    //是否打印发票
    private Boolean printInvoice;
    //结算方式
    private String settlementMethod;
    //仓库
    private String wareHouse;
    //审单员
    private String inspectionPeople;
    //扫描员
    private String scannerPeople;
    //拣货员
    private String orderPicker;
    //打包员
    private String packingClerk;
    //检视员
    private String observer;
    //结算员
    private String settlementClerk;
    //发货员
    private String consignor;
    //业务员
    private String salesman;
    //客服备注
    private String customerComments;
    //最后修改时间
    private String lastModifiedTime;
	
    public String getErpOrderId(){
        return this.erpOrderId;
    }

    public void setErpOrderId(String erpOrderId){
        this.erpOrderId = erpOrderId;
    }
		
  /*  public Long getOrderStateId(){
        return this.orderStateId;
    }

    public void setOrderStateId(Long orderStateId){
        this.orderStateId = orderStateId;
    }
		*/
    public String getCustomerName (){
        return this.customerName ;
    }

    public void setCustomerName (String customerName ){
        this.customerName  = customerName ;
    }
		
    public String getPaymentAccount(){
        return this.paymentAccount;
    }

    public void setPaymentAccount(String paymentAccount){
        this.paymentAccount = paymentAccount;
    }
		
    public int getHandleDays(){
        return this.handleDays;
    }

    public void setHandleDays(int handleDays){
        this.handleDays = handleDays;
    }
		
    public int getPurchaseTimes(){
        return this.purchaseTimes;
    }

    public void setPurchaseTimes(int purchaseTimes){
        this.purchaseTimes = purchaseTimes;
    }
		
    public int getTelephone(){
        return this.telephone;
    }

    public void setTelephone(int telephone){
        this.telephone = telephone;
    }
		
    public String getAddressee(){
        return this.addressee;
    }

    public void setAddressee(String addressee){
        this.addressee = addressee;
    }
		
    public String getProvince(){
        return this.province;
    }

    public void setProvince(String province){
        this.province = province;
    }
		
    public String getCity(){
        return this.city;
    }

    public void setCity(String city){
        this.city = city;
    }
		
    public String getCounty(){
        return this.county;
    }

    public void setCounty(String county){
        this.county = county;
    }
		
    public String getAddress(){
        return this.address;
    }

    public void setAddress(String address){
        this.address = address;
    }
		
    public int getZipCode(){
        return this.zipCode;
    }

    public void setZipCode(int zipCode){
        this.zipCode = zipCode;
    }
		
    public int getTotalGoods(){
        return this.totalGoods;
    }

    public void setTotalGoods(int totalGoods){
        this.totalGoods = totalGoods;
    }
		
    public BigDecimal getTotalLoan(){
        return this.totalLoan;
    }

    public void setTotalLoan(BigDecimal totalLoan){
        this.totalLoan = totalLoan;
    }
		
    public BigDecimal getDiscountAmount(){
        return this.discountAmount;
    }

    public void setDiscountAmount(BigDecimal discountAmount){
        this.discountAmount = discountAmount;
    }
		
    public BigDecimal getTaxRevenue(){
        return this.taxRevenue;
    }

    public void setTaxRevenue(BigDecimal taxRevenue){
        this.taxRevenue = taxRevenue;
    }
		
    public BigDecimal getCompensationRefund(){
        return this.compensationRefund;
    }

    public void setCompensationRefund(BigDecimal compensationRefund){
        this.compensationRefund = compensationRefund;
    }
		
    public BigDecimal getTotalCostOfGoods(){
        return this.totalCostOfGoods;
    }

    public void setTotalCostOfGoods(BigDecimal totalCostOfGoods){
        this.totalCostOfGoods = totalCostOfGoods;
    }
		
    public BigDecimal getTotalCost(){
        return this.totalCost;
    }

    public void setTotalCost(BigDecimal totalCost){
        this.totalCost = totalCost;
    }
		
    public String getArrivalStatus(){
        return this.arrivalStatus;
    }

    public void setArrivalStatus(String arrivalStatus){
        this.arrivalStatus = arrivalStatus;
    }
		
    public BigDecimal getArrivalTotalMoney(){
        return this.arrivalTotalMoney;
    }

    public void setArrivalTotalMoney(BigDecimal arrivalTotalMoney){
        this.arrivalTotalMoney = arrivalTotalMoney;
    }
		
    public BigDecimal getArrivalOtherExpenses(){
        return this.arrivalOtherExpenses;
    }

    public void setArrivalOtherExpenses(BigDecimal arrivalOtherExpenses){
        this.arrivalOtherExpenses = arrivalOtherExpenses;
    }
		
    public String getBillOfArrival(){
        return this.billOfArrival;
    }

    public void setBillOfArrival(String billOfArrival){
        this.billOfArrival = billOfArrival;
    }
		
    public BigDecimal getEstimatedWeight(){
        return this.estimatedWeight;
    }

    public void setEstimatedWeight(BigDecimal estimatedWeight){
        this.estimatedWeight = estimatedWeight;
    }
		
    public BigDecimal getWeight(){
        return this.weight;
    }

    public void setWeight(BigDecimal weight){
        this.weight = weight;
    }
		
    public String getFreightWaybill(){
        return this.freightWaybill;
    }

    public void setFreightWaybill(String freightWaybill){
        this.freightWaybill = freightWaybill;
    }
		
    public Date getTradingTime(){
        return this.tradingTime;
    }

    public void setTradingTime(Date tradingTime){
        this.tradingTime = tradingTime;
    }
		
    public Date getPaymentTime(){
        return this.paymentTime;
    }

    public void setPaymentTime(Date paymentTime){
        this.paymentTime = paymentTime;
    }
		
    public Date getAuditTime(){
        return this.auditTime;
    }

    public void setAuditTime(Date auditTime){
        this.auditTime = auditTime;
    }
		
    public Date getRegistrationTime(){
        return this.registrationTime;
    }

    public void setRegistrationTime(Date registrationTime){
        this.registrationTime = registrationTime;
    }
		
    public Date getDeliveryTime(){
        return this.deliveryTime;
    }

    public void setDeliveryTime(Date deliveryTime){
        this.deliveryTime = deliveryTime;
    }
		
    public String getSourceNumber(){
        return this.sourceNumber;
    }

    public void setSourceNumber(String sourceNumber){
        this.sourceNumber = sourceNumber;
    }
		
    public String getProductSummary(){
        return this.productSummary;
    }

    public void setProductSummary(String productSummary){
        this.productSummary = productSummary;
    }
		
    public String getPaymentOrder(){
        return this.paymentOrder;
    }

    public void setPaymentOrder(String paymentOrder){
        this.paymentOrder = paymentOrder;
    }
		
    public String getCustomerRemarks(){
        return this.customerRemarks;
    }

    public void setCustomerRemarks(String customerRemarks){
        this.customerRemarks = customerRemarks;
    }
		
    public String getCustom1(){
        return this.custom1;
    }

    public void setCustom1(String custom1){
        this.custom1 = custom1;
    }
		
    public String getCustom2(){
        return this.custom2;
    }

    public void setCustom2(String custom2){
        this.custom2 = custom2;
    }
		
    public String getCustom3(){
        return this.custom3;
    }

    public void setCustom3(String custom3){
        this.custom3 = custom3;
    }
		
    public String getCustom4(){
        return this.custom4;
    }

    public void setCustom4(String custom4){
        this.custom4 = custom4;
    }
		
    public String getCustom5(){
        return this.custom5;
    }

    public void setCustom5(String custom5){
        this.custom5 = custom5;
    }
		
   /* public String getSource(){
        return this.source;
    }

    public void setSource(String source){
        this.source = source;
    }
		
    public String getSourceId(){
        return this.sourceId;
    }

    public void setSourceId(String sourceId){
        this.sourceId = sourceId;
    }
		
    public Long getSalesOrderId(){
        return this.salesOrderId;
    }

    public void setSalesOrderId(Long salesOrderId){
        this.salesOrderId = salesOrderId;
    }
		*/
    public String getSign(){
        return this.sign;
    }

    public void setSign(String sign){
        this.sign = sign;
    }
		
    public BigDecimal getMoneyChange(){
        return this.moneyChange;
    }

    public void setMoneyChange(BigDecimal moneyChange){
        this.moneyChange = moneyChange;
    }
		
    public BigDecimal getPostageReceivable(){
        return this.postageReceivable;
    }

    public void setPostageReceivable(BigDecimal postageReceivable){
        this.postageReceivable = postageReceivable;
    }
		
    public BigDecimal getPostagePayable(){
        return this.postagePayable;
    }

    public void setPostagePayable(BigDecimal postagePayable){
        this.postagePayable = postagePayable;
    }
		
    public BigDecimal getTotalReceivables(){
        return this.totalReceivables;
    }

    public void setTotalReceivables(BigDecimal totalReceivables){
        this.totalReceivables = totalReceivables;
    }
		
    public BigDecimal getPaidInAmount(){
        return this.paidInAmount;
    }

    public void setPaidInAmount(BigDecimal paidInAmount){
        this.paidInAmount = paidInAmount;
    }
		
    public BigDecimal getWarehouseCommission(){
        return this.warehouseCommission;
    }

    public void setWarehouseCommission(BigDecimal warehouseCommission){
        this.warehouseCommission = warehouseCommission;
    }
		
    public BigDecimal getPlatformTradingCommission(){
        return this.platformTradingCommission;
    }

    public void setPlatformTradingCommission(BigDecimal platformTradingCommission){
        this.platformTradingCommission = platformTradingCommission;
    }
		
    public BigDecimal getGrossProfit(){
        return this.grossProfit;
    }

    public void setGrossProfit(BigDecimal grossProfit){
        this.grossProfit = grossProfit;
    }
		
    public String getLogisticsCompany(){
        return this.logisticsCompany;
    }

    public void setLogisticsCompany(String logisticsCompany){
        this.logisticsCompany = logisticsCompany;
    }
		
    public String getShopLocation(){
        return this.shopLocation;
    }

    public void setShopLocation(String shopLocation){
        this.shopLocation = shopLocation;
    }
		
    public String getOrderType(){
        return this.orderType;
    }

    public void setOrderType(String orderType){
        this.orderType = orderType;
    }
		
    public String getOrderSource(){
        return this.orderSource;
    }

    public void setOrderSource(String orderSource){
        this.orderSource = orderSource;
    }
		
    public Date getSingleTime(){
        return this.singleTime;
    }

    public void setSingleTime(Date singleTime){
        this.singleTime = singleTime;
    }
		
    public Date getRickingTime(){
        return this.rickingTime;
    }

    public void setRickingTime(Date rickingTime){
        this.rickingTime = rickingTime;
    }
		
    public Date getOutboundTime(){
        return this.outboundTime;
    }

    public void setOutboundTime(Date outboundTime){
        this.outboundTime = outboundTime;
    }
		
    public Date getWeighingTime(){
        return this.weighingTime;
    }

    public void setWeighingTime(Date weighingTime){
        this.weighingTime = weighingTime;
    }
		
    public Boolean getWeighing(){
        return this.weighing;
    }

    public void setWeighing(Boolean weighing){
        this.weighing = weighing;
    }
		
    public String getPrintBatch(){
        return this.printBatch;
    }

    public void setPrintBatch(String printBatch){
        this.printBatch = printBatch;
    }
		
    public int getPrintSerialNumber(){
        return this.printSerialNumber;
    }

    public void setPrintSerialNumber(int printSerialNumber){
        this.printSerialNumber = printSerialNumber;
    }
		
    public String getSortingNumber(){
        return this.sortingNumber;
    }

    public void setSortingNumber(String sortingNumber){
        this.sortingNumber = sortingNumber;
    }
		
    public Boolean getDoYouWantToInvoice(){
        return this.doYouWantToInvoice;
    }

    public void setDoYouWantToInvoice(Boolean doYouWantToInvoice){
        this.doYouWantToInvoice = doYouWantToInvoice;
    }
		
    public String getInvoiceHeader(){
        return this.invoiceHeader;
    }

    public void setInvoiceHeader(String invoiceHeader){
        this.invoiceHeader = invoiceHeader;
    }
		
    public String getInvoiceContent(){
        return this.invoiceContent;
    }

    public void setInvoiceContent(String invoiceContent){
        this.invoiceContent = invoiceContent;
    }
		
    public Boolean getPrintInvoice(){
        return this.printInvoice;
    }

    public void setPrintInvoice(Boolean printInvoice){
        this.printInvoice = printInvoice;
    }
		
    public String getSettlementMethod(){
        return this.settlementMethod;
    }

    public void setSettlementMethod(String settlementMethod){
        this.settlementMethod = settlementMethod;
    }
		
    public String getWareHouse(){
        return this.wareHouse;
    }

    public void setWareHouse(String wareHouse){
        this.wareHouse = wareHouse;
    }
		
    public String getInspectionPeople(){
        return this.inspectionPeople;
    }

    public void setInspectionPeople(String inspectionPeople){
        this.inspectionPeople = inspectionPeople;
    }
		
    public String getScannerPeople(){
        return this.scannerPeople;
    }

    public void setScannerPeople(String scannerPeople){
        this.scannerPeople = scannerPeople;
    }
		
    public String getOrderPicker(){
        return this.orderPicker;
    }

    public void setOrderPicker(String orderPicker){
        this.orderPicker = orderPicker;
    }
		
    public String getPackingClerk(){
        return this.packingClerk;
    }

    public void setPackingClerk(String packingClerk){
        this.packingClerk = packingClerk;
    }
		
    public String getObserver(){
        return this.observer;
    }

    public void setObserver(String observer){
        this.observer = observer;
    }
		
    public String getSettlementClerk(){
        return this.settlementClerk;
    }

    public void setSettlementClerk(String settlementClerk){
        this.settlementClerk = settlementClerk;
    }
		
    public String getConsignor(){
        return this.consignor;
    }

    public void setConsignor(String consignor){
        this.consignor = consignor;
    }
		
    public String getSalesman(){
        return this.salesman;
    }

    public void setSalesman(String salesman){
        this.salesman = salesman;
    }
		
    public String getCustomerComments(){
        return this.customerComments;
    }

    public void setCustomerComments(String customerComments){
        this.customerComments = customerComments;
    }
		
    public String getLastModifiedTime(){
        return this.lastModifiedTime;
    }

    public void setLastModifiedTime(String lastModifiedTime){
        this.lastModifiedTime = lastModifiedTime;
    }
	
}