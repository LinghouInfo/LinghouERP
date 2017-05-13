<!DOCTYPE html>
<html>
 <head> 
  <title>店铺分类设置</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <link type="image/x-icon" rel="shortcut icon" href="/Config/images/favicon.ico"" />
  <link rel="stylesheet" href="/Config/css/bootstrap/css/bootstrap.min.css" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap/css/leftMenu/default.css" /> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap.js"></script> 
 </head> 
 <body> 
  <div class="container-fluid">
    <#include "header.ftl" /> 
   <div class="row" style="margin-top:60px;"> 
    <div name="left" class="col-md-1">
      <#include "left_shop.ftl"/>
    </div> 
    <div class="col-md-11" style="padding:15px; padding-left:50px;"> 
     <main name="right" style=""> 
      <div> 
       <!-- Nav tabs --> 
       <ul class="nav nav-tabs" role="tablist"> 
        <li role="presentation" class="active"> <a href="#home" aria-controls="home" role="tab" data-toggle="tab">店铺分类查询</a></li> 
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
         <div name="message">${susses}</div>
         <form class="form-inline"> 
          <div class="form-group"> 
           <label class="sr-only" for="brandName">店铺分类名称</label> 
           <input placeholder="请输入搜索的店铺分类名称"    name="brandName" class="form-control" /> 
          </div> 
            <button type="button" class="btn btn-primary">
				          <span class="glyphicon glyphicon-search"></span> 搜索
			 </button> 
			 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat"><span class="glyphicon glyphicon-plus"></span>&nbsp;新建店铺分类</button>
         </form> 
         
			
		 <div class="row" style="margin-left:0px;background-color:;">
		 <table class="table">
			  <thead>
			    <tr>
			      <th>店铺分类ID</th>
			      <th>店铺分类名称</th>
			      <th>操作</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>#99</td>
			      <td>Bangalore</td>
			        <td>
					<select id="pid" class="form-control"  onchange="operationChange()">
						<option selected="selected">选择操作</option>
					    <option operation="delete" value="1">删除该店铺分类信息</option>
					    <option operation="update" value="2">修改该店铺分类信息</option>
					</select>
					
					</td>
			      </td>
			    </tr>
			    <tr>
			      <td>#98</td>
			      <td>Mumbai</td>
			      <td>
			    	<select class="form-control"  onchange="operationChange()">
						<option selected="selected">选择操作</option>
					    <option operation="delete" value="1">删除该店铺分类信息</option>
					    <option operation="update" value="2">修改该店铺分类信息</option>
					</select>
					</td>
			      </td>
			    </tr>
			  </tbody>
			</table>
		 </div>
		 
		 
		 <div class="row">
		 	  <#include "pager.ftl"/>
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
	            	   $("#warehoudeId").attr("value",objS.options[objS.selectedIndex].getAttribute('value'));
	                      break;
	               default:;
	           } 
	       }          
		</script>
		
		
		
      
		 
		 
		 
	   <div   class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;" > 
           <div class="modal-content"> 
		   
		   
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">修改店铺分类信息</h4>
            </div> 
            <div class="modal-body"> 
            
             <form> 
             
             <div class="form-group"> 
               <label for="recipient-name" class="control-label" ></label> 
               <input id="warehoudeId" readonly="readonly"  value=" type="text" class="form-control brandName"  style="width:400px;"  />
              </div> 
             
             
              <div class="form-group"> 
               <label for="recipient-name" class="control-label" >店铺分类名称:</label> 
               <input  name="brandName" type="text" class="form-control brandName"  style="width:400px;" placeholder="请输入店铺分类名称"   />
              </div> 
              
              <div class="form-group "> 
               <label for="message-text" class="control-label">店铺分类序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;"  placeholder="请输入店铺分类序号,序号越大查询越靠前" 
			        />
              </div> 
		    </form> 
			 
            </div> 
            <div class="modal-footer" style="text-align:left;">
            
             <button type="button" class="btn btn-primary" id="save"  style="margin-left:4px;">保存</button> 
             <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
             <div>
             
            </div>
			<script type="text/javascript">  
				
				    $("#save").click(function(){  
				    
				    		alert("dada");
				              var saveDataAry=[];    
				            
				              var brandName = $(".brandName").val().trim();  
				               
				              var serialNumber=$(".serialNumber").val().trim();  
				           
				              var data1={brandName:brandName,serialNumber:serialNumber};  
				       
				              $.ajax({  
				                  url:"${pageContext.request.contextPath}/Config/addBrand",  
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

	   <div   class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;" > 
           <div class="modal-content"> 
		   
		   
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">新增店铺分类</h4>
            </div> 
            <div class="modal-body"> 
            
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label" >店铺分类名称:</label> 
               <input  name="brandName" type="text" class="form-control brandName"  style="width:400px;" placeholder="请输入店铺分类名称"   />
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label" >店铺分类序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;"  placeholder="请输入店铺分类序号,序号越大查询越靠前"  />
              </div> 
		    </form> 
			 
            </div> 
            <div class="modal-footer" style="text-align:left;">
             <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;">保存</button>
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
             <div>
             
            </div>
				<script type="text/javascript">  
				
				    $("#save").click(function(){  
				    
				    		alert("dada");
				              var saveDataAry=[];    
				            
				              var brandName = $(".brandName").val().trim();  
				               
				              var serialNumber=$(".serialNumber").val().trim();  
				           
				              var data1={brandName:brandName,serialNumber:serialNumber};  
				       
				              $.ajax({  
				                  url:"${pageContext.request.contextPath}/Config/addBrand",  
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