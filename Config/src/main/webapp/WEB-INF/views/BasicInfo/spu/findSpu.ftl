<!DOCTYPE html>
<html>
 <head> 
  <title>SPU设置</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  <link rel="stylesheet" href="/Config/css/bootstrap/css/bootstrap.min.css" /> 
  <link rel="stylesheet" href="/Config/css/bootstrap/css/leftMenu/font-awesome.min.css" /> 
  <link rel="stylesheet" href="/Config/css/bootstrap/css/leftMenu/metismenu.min.css" /> 
  <link rel="stylesheet" href="/Config/css/bootstrap/css/leftMenu/demo.css" /> 
  <link rel="stylesheet" href="/Config/css/bootstrap/css/leftMenu/prism.min.css" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap/css/leftMenu/default.css" /> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap.js"></script> 
  <script src="/Config/css/bootstrap/js/leftMenu/metismenu.js"></script> 
  <script src="/Config/css/bootstrap/js/leftMenu/prism.min.js"></script> 
 </head> 
 <body> 
  <div class="container-fluid">
    <#include "header.ftl" > 
   <div class="row" style="margin-top:60px;"> 
    <div name="left" class="col-md-1">
      <#include "left_spu.ftl"> 
    </div> 
    <div class="col-md-11" style="padding:15px; padding-left:50px;"> 
     <main name="right" style=""> 
      <div> 
       <!-- Nav tabs --> 
       <ul class="nav nav-tabs" role="tablist"> 
        <li role="presentation" class="active"> <a href="#home" aria-controls="home" role="tab" data-toggle="tab">SPU查询</a></li> 
       </ul> 
       <!-- Tab panes --> 
       <div class="tab-content"> 
        <div role="tabpanel" class="tab-pane active" id="home"> 
         <table> 
          <tbody> 
           <tr> 
            <td>&nbsp;</td> 
           </tr> 
          </tbody> 
         </table> 
         <div name="message">
          ${susses}
         </div> 
         <form class="form-inline"> 
          <div class="form-group"> 
           <label class="sr-only" for="spuName">SPU名称</label> 
           <input placeholder="请输入搜索的SPU名称" onpaste="return false" oncontextmenu="return false" name="brandName" class="form-control" /> 
          </div> 
          <button class="btn btn-primary icon-search">搜索</button> 
         </form> 
         <button class="btn btn-primary icon-search" data-toggle="modal" style="position:relative; top:-31px;  left:250px;" data-target="#exampleModal" data-whatever="@fat">新建SPU</button> 
         <div class="row" style="margin-left:0px;background-color:;"> 
          <table class="table"> 
           <thead> 
            <tr> 
             <th>产品编号</th> 
             <th>产品名称</th> 
             <th>类型</th> 
             <th>品牌</th> 
             <th>SPU是否多规格</th> 
             <th>市场价格</th> 
             <th>销量</th> 
             <th>添加时间</th> 
             <th>产地</th> 
             <th>进货价</th> 
             <th>重量</th> 
             <th>指定物流</th> 
             <th>是否航空禁运</th> 
             <th>操作</th> 
            </tr> 
           </thead> 
           <tbody> 
            <tr> 
             <td>HP201704050004</td> 
             <td>杰妃鱼胶原蛋白肽 3克*7条 （1盒）</td> 
             <td>标准产品</td> 
             <td>杰妃</td> 
             <td>否</td> 
             <td>未知</td> 
             <td>未知</td> 
             <td>2012-01-01</td> 
             <td>河北省...</td> 
             <td>未知</td> 
             <td>未知</td> 
             <td>EMS</td> 
             <td>否</td> 
             <td> <select id="pid" class="form-control" onchange="operationChange()"> <option selected="selected">选择操作</option> <option operation="delete" value="1">删除该产品信息</option> <option operation="update" value="2">修改该产品信息</option> </select> </td> 
            </tr> 
            <tr> 
             <td>HP201704050004</td> 
             <td>杰妃鱼胶原蛋白肽 4克*8条 （2盒）</td> 
             <td>类型</td> 
             <td>品牌</td> 
             <td>SPU是否多规格</td> 
             <td>市场价格</td> 
             <td>销量</td> 
             <td>2012-01-01</td> 
             <td>未知</td> 
             <td>未知</td> 
             <td>未知</td> 
             <td>顺风</td> 
             <td>否</td> 
             <td> <select class="form-control" onchange="operationChange()"> <option selected="selected">选择操作</option> <option value="id">删除该产品信息</option> <option value="id">修改该产品信息</option> </select></td> 
            </tr> 
           </tbody> 
          </table> 
         </div> 
         <div class="row" style="margin-left:300px;">
           <#include "pager.ftl"> 
         </div> 
         <script>
	       function operationChange(){
	           var objS = document.getElementById("pid");
	           var operation = objS.options[objS.selectedIndex].getAttribute('operation');
	           switch(operation)
	           {
	               case "delete":
	            	   confirm('您确定删除这条记录吗？')
	                      break;
	               case "update":
	            	  alert(objS.options[objS.selectedIndex].getAttribute('value'));	            	   
	            	   $("#exampleModal2").modal(); 
	            	   $("#spuId").attr("value",objS.options[objS.selectedIndex].getAttribute('value'));
	                      break;
	               default:;
	           } 
	       }	          
		</script> 
         <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">修改SPU</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label"></label> 
               <input id="spuId" name="" type="text" class="form-control brandName" style="width:400px;" value="" readonly="readonly" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label"></label> 
               <input name="spuCode" type="text" class="form-control brandName" style="width:400px;" placeholder="请输入产品编号" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="spuName" class="form-control serialNumber" style="width:400px;" placeholder="请输入产品名称" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <select class="form-control" onpaste="return false" oncontextmenu="return false"> <option selected="selected">选择产品类型</option> <option>标准产品</option> <option>食品</option> <option>玩具</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <select class="form-control" onpaste="return false" oncontextmenu="return false"> <option selected="selected">选择品牌</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <label class="form-label">是否多规格</label> 
               <input type="checkbox" onpaste="return false" oncontextmenu="return false" value="1" class="form-control" style="height:12px; " /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入市场价格" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入销量" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入产品产地" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入添加时间(不写默认本地时间)" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入进货价格" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入产品重量" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <select class="form-control" onpaste="return false" oncontextmenu="return false"> <option selected="selected">指定物流</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <label class="form-label">是否航空禁运</label> 
               <input type="checkbox" onpaste="return false" oncontextmenu="return false" value="1" class="form-control" style="height:12px; " /> 
              </div> 
             </form> 
            </div> 
            <div class="modal-footer" style="text-align:left;"> 
             <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left:4px;">关闭</button> 
             <button type="button" class="btn btn-primary" id="save">保存</button> 
             <div> 
             </div> 
				<script type="text/javascript">  
				
				    $("#save").click(function(){  
				    
				
				              var saveDataAry=[];    
				            
				              var brandName = $(".brandName").val().trim();  
				               
				              var serialNumber=$(".serialNumber").val().trim();  
				           
				              var data1={brandName:brandName,serialNumber:serialNumber};  
				       
				              $.ajax({  
				                  url:"${pageContext.request.contextPath}/Config/addSpu",  
				                  type:"post",  
				                  dataType:"json",     
				                  data:data1,  
				                  success:function(result){  
				                    alert(result);
				                  },  
				                  error:function(){  
				                      alert("发生异常，请重试！");  
				                    }  
				               });  
				              
				        });
				</script> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">新增SPU</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label"></label> 
               <input name="spuCode" type="text" class="form-control brandName" style="width:400px;" placeholder="请输入产品编号" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="spuName" class="form-control serialNumber" style="width:400px;" placeholder="请输入产品名称" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <select class="form-control" onpaste="return false" oncontextmenu="return false"> <option selected="selected">选择产品类型</option> <option>标准产品</option> <option>食品</option> <option>玩具</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <select class="form-control" onpaste="return false" oncontextmenu="return false"> <option selected="selected">选择品牌</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <label class="form-label">是否多规格</label> 
               <input type="checkbox" onpaste="return false" oncontextmenu="return false" value="1" class="form-control" style="height:12px; " /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入市场价格" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入销量" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入产品产地" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入添加时间(不写默认本地时间)" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入进货价格" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <input name="" class="form-control serialNumber" style="width:400px;" placeholder="请输入产品重量" onpaste="return false" oncontextmenu="return false" /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <select class="form-control" onpaste="return false" oncontextmenu="return false"> <option selected="selected">指定物流</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label"></label> 
               <label class="form-label">是否航空禁运</label> 
               <input type="checkbox" onpaste="return false" oncontextmenu="return false" value="1" class="form-control" style="height:12px; " /> 
              </div> 
             </form> 
            </div> 
            <div class="modal-footer" style="text-align:left;"> 
             <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left:4px;">关闭</button> 
             <button type="button" class="btn btn-primary" id="save">保存</button> 
             <div> 
             </div> 
				<script type="text/javascript">  
				
				    $("#save").click(function(){  
				    
				
				              var saveDataAry=[];    
				            
				              var brandName = $(".brandName").val().trim();  
				               
				              var serialNumber=$(".serialNumber").val().trim();  
				           
				              var data1={brandName:brandName,serialNumber:serialNumber};  
				       
				              $.ajax({  
				                  url:"${pageContext.request.contextPath}/Config/addSpu",  
				                  type:"post",  
				                  dataType:"json",     
				                  data:data1,  
				                  success:function(result){  
				                    alert(result);
				                  },  
				                  error:function(){  
				                      alert("发生异常，请重试！");  
				                    }  
				               });  
				              
				        });
				</script> 
            </div> 
           </div> 
          </div> 
         </div> 
        </div> 
       </div> 
      </div> 
     </main> 
    </div> 
   </div> 
  </div>  
 </body>
</html>