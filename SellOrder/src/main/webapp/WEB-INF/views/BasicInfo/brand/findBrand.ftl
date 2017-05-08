<!DOCTYPE html>
<html>
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  <title>首页</title> 
  <link rel="stylesheet" type="text/css" href="/SellOrder/css/bootstrap.css" media="screen" /> 
  <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" /> 
  <link rel="stylesheet" type="text/css" href="/SellOrder/css/left.css" media="screen" /> 
  <link rel="shortcut icon" href="/SellOrder//images/favicon.ico" /> 
  <link rel="stylesheet" type="text/css" media="screen" href="/SellOrder/css/kkpager_orange.css" /> 
  <script type="text/javascript" src="/SellOrder/js/jquery.js"></script> 
  <script type="text/javascript" src="/SellOrder/js/kkpager.min.js"></script> 
  <style type="text/css">

.container-fluid {
	position: relative;
	top: 80px;
}
#myModal{position: relative;top:200px; left:200px; width:500px; }
.modal-backdrop {
  opacity: 0 !important;
  filter: alpha(opacity=0) !important;
}
.form-control{font-size: 14px;}

  #tabs {

    overflow: hidden;

    width: 100%;

    margin: 0;

    padding: 0;

    list-style: none;

  }


  #tabs li {

    float: left;

    margin: 0 -15px 0 0;

  }



  #tabs a {

    float: left;

    position: relative;

    padding: 0 40px;

    height: 0;

    line-height: 30px;

    text-transform: uppercase;

    text-decoration: none;

    color: #fff;      

    border-right: 30px solid transparent;

    border-bottom: 30px solid #3D3D3D;

    border-bottom-color: #777\9;

    opacity: .3;

    filter: alpha(opacity=30);      

  }



  #tabs a:hover,

  #tabs a:focus {

    border-bottom-color: #2ac7e1;

    opacity: 1;

    filter: alpha(opacity=100);

  }

  #tabs a:focus {

    outline: 0;

  }

  #tabs #current {

    z-index: 3;

    border-bottom-color: #3d3d3d;

    opacity: 1;

    filter: alpha(opacity=100);      

  }

  #content {

      background: #fff;

      border-top: 2px solid #3d3d3d;

      padding: 2em;

  }

  #content h2,

    #content h3,

    #content p {

      margin: 0 0 15px 0;

  }  





  #about {

      color: #999;

      text-align: center;

      font: 0.9em Arial, Helvetica;

  }


  #about a {

      color: #777;
  }   
  

</style> 
 </head> 
 <body>
   <#include "header.ftl" />; 
  <div class="container-fluid"> 
   <div class="row"> 
    <div name="left" class="col-md-1">
     <#include "left1.ftl"/>
    </div> 
    <div name="right" class="col-md-10 "> 
     <div name=""> 
      <main class="col-md-11"> 
       <ol class="breadcrumb"> 
        <li><a href="#">Home</a></li> 
        <li><a href="#">2013</a></li> 
        <li class="active">十一月</li> 
       </ol> 
       <div> 
        <ul id="tabs"> 
         <li><a href="#" name="#tab1">查询品牌</a></li> 
         <li><a href="#" name="#tab2">新建品牌</a></li> 
         <li><a href="#" name="#tab3">Three</a></li> 
         <li><a href="#" name="#tab4">Four</a></li> 
        </ul> 
        <div id="content" style="width:1400px;"> 
         <div id="tab1"> 
         <div class="panel panel-default">
   			 <div class="panel-body">
          <form action="/SellOrder/queryBrand" method="post"> 
           <div class="row"> 
            <div class="col-md-2"> 
             <input placeholder="请输入要搜索的品牌" name="brandName" class="form-control" /> 
            </div>  
            <i class="icon-search"> </i> 
            <button class="btn btn-primary icon-search">搜索</button> 
           </div>
          </form> 
          <br /> 
          <div class="row"> 
           <div class="col-md-3"> 
            <table class="table table-striped"> 
             <caption> 
              <hr /> 
             </caption> 
             <thead> 
              <tr> 
               <th>序号</th> 
               <th>品牌名称</th> 
               <th>操作</th> 
              </tr> 
             </thead> 
             <tbody>
               <#list list as lis> 
              <tr> 
               <th>${lis.serialNumber}</th> 
               <th>${lis.brandName}</th> 
               <th><a href="#">修改</a>&nbsp;<a href="#">删除</a></th> 
              </tr> 
              </#list> 
             </tbody> 
            </table> 
        
           </div> 
           
          </div>
	       <div class="row">
	       	  &nbsp;&nbsp;&nbsp; <div id="kkpager"> 
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
						//链接前部 	控制器url路径
						hrefFormer : '',
						//链接尾部
						hrefLatter : '.html',
						getLink : function(n){
							// this.hrefFormer + this.hrefLatter + "?pno="+n
							return "#";
						}
					});
				});
			</script> 
	          
	       </div>
	           </div>
			</div>
         </div> 
         <div id="tab2"> 
         </div> 
         <div id="tab3">
           3 
         </div> 
         <div id="tab4">
           5 
         </div> 
        </div> 
        <p id="about">&nbsp;</p> 
        <script>

    function resetTabs(){

        $("#content > div").hide(); //Hide all content

        $("#tabs a").attr("id",""); //Reset id's      

    }



    var myUrl = window.location.href; //get URL

    var myUrlTab = myUrl.substring(myUrl.indexOf("#")); // For localhost/tabs.html#tab2, myUrlTab = #tab2     

    var myUrlTabName = myUrlTab.substring(0,4); // For the above example, myUrlTabName = #tab



    (function(){

        $("#content > div").hide(); // Initially hide all content

        $("#tabs li:first a").attr("id","current"); // Activate first tab

        $("#content > div:first").fadeIn(); // Show first tab content

        

        $("#tabs a").on("click",function(e) {

            e.preventDefault();

            if ($(this).attr("id") == "current"){ //detection for current tab

             return       

            }

            else{             

            resetTabs();

            $(this).attr("id","current"); // Activate this

            $($(this).attr('name')).fadeIn(); // Show content for current tab

            }

        });



        for (i = 1; i <= $("#tabs li").length; i++) {

          if (myUrlTab == myUrlTabName + i) {

              resetTabs();

              $("a[name='"+myUrlTab+"']").attr("id","current"); // Activate url tab

              $(myUrlTab).fadeIn(); // Show url tab content        

          }

        }

    })()

  </script> 
        <div class="col-md-4"> 
         <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
          <div class="modal-dialog"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <h3 class="modal-title">新建品牌</h3> 
             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
            </div> 
            <div class="modal-body"> 
             <input class="form-control" placeholder="请输入品牌名称" />
             <br /> 
             <input class="form-control" placeholder="输入品牌序号(序号越大越靠前)" /> 
            </div> 
            <div class="modal-footer"> 
             <button type="button" class="btn btn-primary"> 保存 </button> 
             <button type="button" class="btn btn-default" data-dismiss="modal">取消 </button> 
            </div> 
           </div>
           <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
         </div>
         <!-- /.modal --> 
        </div> 
       </div> 
      </main>
     </div>  
    </div> 
   </div> 
  </div> 
  <script type="text/javascript" src="/SellOrder/js/bootstrap.js"></script> 
  <script type="text/javascript" src="/SellOrder/js/left.js"></script>   
 </body>
</html>