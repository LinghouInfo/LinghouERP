<!DOCTYPE html>
<html>
<head>
<title>test page</title>
<script type="text/javascript" src="/SellOrder/js/jquery.js"></script>
<script type="text/javascript" src="/SellOrder/js/kkpager.min.js"></script>
<link rel="stylesheet" type="text/css" href="/SellOrder/css/kkpager_orange.css" />
</head>
<body>
    <div id="kkpager">
    </div>
<script type="text/javascript">
function getParameter(name) { 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null;
}
//init
$(function(){
	var totalPage = 10;
	var totalRecords = 10;
	var pageNo = getParameter('pno');
	if(!pageNo){
		pageNo = 1;
	}
	//生成分页
	//有些参数是可选的，比如lang，若不传有默认值
	kkpager.generPageHtml({
		pno : pageNo,
		//总页码
		total : totalPage,
		//总数据条数
		totalRecords : totalRecords,
		//链接前部
		hrefFormer : 'pager_test_orange_color',
		//链接尾部
		hrefLatter : '.html',
		getLink : function(n){
			return this.hrefFormer + this.hrefLatter + "?pno="+n;
		}

	});
});
</script>

</body>
</html>