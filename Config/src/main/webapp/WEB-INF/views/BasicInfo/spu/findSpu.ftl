<!DOCTYPE html>
<html>
 <head> 
  <title>SPU设置</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  <link type="image/x-icon" rel="shortcut icon" href="/Config/images/favicon.ico"/>
  <link rel="stylesheet" href="/Config/css/bootstrap/css/bootstrap.min.css" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap/css/leftMenu/default.css" /> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap.js"></script> 
  <style>
  
  </style>
 </head> 
 <body> 
  <div class="container-fluid">
    <#include "header.ftl" > 
   <div class="row" style="margin-top:60px;"> 
    <div name="left" class="col-md-1">
      <#include "left_spu.ftl"> 
    </div> 
    <div class="col-md-11" style="padding:15px; padding-left:50px;"> 
 
      <div> 
       <!-- Nav tabs --> 
       <ul class="nav nav-tabs" role="tablist"> 
        <li role="presentation" class="active"> <a href="#home" aria-controls="home" role="tab" data-toggle="tab" style="font-weight:bold;">SPU查询</a></li> 
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
         

      <div class="panel panel-default"> 

		<div id="collapseOne">
			<div class="panel-body">
					<form class=""> 
						
			           <input placeholder="请输入搜索的SPU名称"   name="brandName" class="form-control" />        
				      <button type="button" class="btn btn-primary">
				          <span class="glyphicon glyphicon-search"></span> 搜索
				       </button>
				       
				         <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat"><span class="glyphicon glyphicon-plus"></span> 新建SPU</button>
				         </form>
				         
				     
			
			 </div>
			    </div>
			     	
			   
			 
			</div>
		</div>
	</div>

 <div class="panel panel-default">
		
		<div id="collapseTwo" >
			<div class="panel-body">
				<input type="checkbox" checked="checked"  onclick="columnOnclick(this,'spuCode');" value="1" class="form-control" style="height:12px;"/>
	       		产品编号
	       		<input type="checkbox" checked="checked" onclick="columnOnclick(this,'spuName');" value="1" class="form-control" style="height:12px;"/>
	       		产品名称
	       		<input type="checkbox" checked="checked"  onclick="columnOnclick(this,'spuSpec');" value="1" class="form-control" style="height:12px;"/>
	       		是否多规格
	       		
	       		
	       		<input type="checkbox"  checked="checked"  onclick="columnOnclick(this,'createTime');"  value="1" class="form-control" style="height:12px;"/>
	       		添加时间
	 
	       		
	       		<input type="checkbox" checked="checked"  onclick="columnOnclick(this,'spuOrigin');" value="1" class="form-control" style="height:12px;"/>
	       		产地		
	       		
	       		<input type="checkbox" checked="checked"  onclick="columnOnclick(this,'designatedLogistics');" value="1" class="form-control" style="height:12px;"/>
	       		物流
	       		
	       		<input type="checkbox"  checked="checked" onclick="columnOnclick(this,'aviationEmbargo');" value="1" class="form-control" style="height:12px;"/>
	       		航空禁运

			</div>
		</div>
		

			<script type="text/javascript">
				function columnOnclick(checkbox,name){
					if($(checkbox).is(':checked')){
				 	    $('th[name=' + name + ']').css('display','block');
				 	    $('td[name=' + name + ']').css('display','block'); 	
			 	    }else{
			 	    	 $('th[name=' + name + ']').css('display','none');
			 	    	 $('td[name=' + name + ']').css('display','none'); 	
				 	    }						 	    
				}
		   </script>
		
		
	</div>
	
		   
           <br/>
          <table class="table" style="text-align:center" > 
           <thead> 
            <tr> 
             <th name="spuCode" >产品编号</th>
             <th>产品简称</th>  
             <th name="spuName">产品名称</th> 
             <th>类型</th> 
             <th>品牌</th> 
             <th name="spuSpec">多规格</th> 
             <th>市场价格</th>    
             <th>进货价</th> 
             <th name="weight" >重量</th> 

             <th name="designatedLogistics">指定物流</th>
             <th>&nbsp;</th> 
             <th name="aviationEmbargo">航空禁运</th> 
             <th>销量</th>
             <th name="spuOrigin">产地</th>
             <th>&nbsp;</th>
             <th name="createTime" >添加时间</th>           
             <th>操作</th> 
            </tr> 
           </thead> 
           <tbody> 
            <tr> 
             <td name="spuCode" >HP201704050004</td> 
             <td>杰妃鱼胶原蛋白肽</td>
             <td name="spuName" >杰妃鱼胶原蛋白肽 3克*7条 （1盒）</td> 
             <td>标准产品</td> 
             <td>杰妃</td> 
             <td name="spuSpec">否</td> 
             <td>1200</td> 
             <td>11</td> 
             <td name="weight" >11kg</td>  
             <td name="designatedLogistics">EMS</td> 
             <td>&nbsp;</td> 
             <td name="aviationEmbargo">否</td> 
             <td>1200</td> 
              <td name="spuOrigin">河北省...</td>  
              <td>&nbsp;</td>
             <td name="createTime">2012-01-01</td> 
             <td> <select id="pid" class="form-control" onchange="operationChange()"> 
             <option selected="selected">操作</option> 
             <option operation="delete" value="1">删除该产品信息</option> 
             <option operation="update" value="2">修改该产品信息</option> 
             <option operation="detailedInformation">查看该产品详细信息</option>
             </select>
               
              </td> 
            </tr> 
            <tr> 
             <td name="spuCode" >HP201704050004</td>
             <td>杰妃鱼胶原蛋白肽</td>
             <td name="spuName" >杰妃鱼胶原蛋白肽 4克*8条 （2盒）</td> 
             <td>标准产品</td> 
             <td>杰妃</td> 
             <td name="spuSpec">否</td> 
             <td>1100</td> 
             <td>1100</td> 
             <td name="weight">12kg</td> 
             <td name="designatedLogistics">顺丰快递</td> 
             <th>&nbsp;</th> 
             <td name="aviationEmbargo">否</td>
             <td>1200</td>  
             <td name="spuOrigin">唐山</td> 
             <td>&nbsp;</td>
             <td name="createTime">2012-01-01</td> 
             <td> <select class="form-control" onchange="operationChange()">
              <option selected="selected">操作</option> 
             <option operation="delete">删除该产品信息</option> 
             <option operation="update">修改该产品信息</option>
             <option operation="detailedInformation">查看该产品详细信息</option>  
             </select>
             </td> 
            </tr> 
           </tbody> 
          </table> 
         </div> 
         <div class="row">
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
	               case "detailedInformation":
		            	  alert(objS.options[objS.selectedIndex].getAttribute('value'));
		            	   $("#exampleModal3").modal(); 
		            	   $("#spuId").attr("value",objS.options[objS.selectedIndex].getAttribute('value'));
		                   break;
	               default:;
	           } 
	       }	          
		</script> 
		<!-- 修改 modal -->
         <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel"  style="font-weight:bold;">修改SPU</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              
             <div class="form-group "> 
                <label for="message-text" class="control-label" >ID:</label> 
             	<input  id="spuId" type="text" class="form-control brandName"  style="width:80px;" value="" readonly="readonly" />
             </div>	
             
              <div class="form-group "> 
               <label for="message-text" class="control-label" >产品类型:</label> 
               <select class="form-control" style="width:150px;" > <option selected="selected">请选择</option> <option>标准产品</option> <option>食品</option> <option>玩具</option> <option>5</option> </select> 
 
              </div>		 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label">产品编号:</label>     
               <input name="spuCode" type="text" class="form-control brandName" style="width:150px;" placeholder="请输入产品编号"   /> 
                 <label for="recipient-name" class="control-label">选择品牌:</label> <select class="form-control" style="width:150px;"> <option selected="selected">请选择</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
             <label for="message-text" class="control-label">产品名称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:395px;" placeholder="请输入产品名称" /> 
             
               <label for="message-text" class="control-label">产品简称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:150px;" placeholder="请输入产品简称" />
              </div> 
             
			  <div class="form-group "> 
               <label for="message-text" class="control-label">产品产地:</label> 
               <input name="" class="form-control serialNumber" style="width:395px;" placeholder="请输入产地"  />
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否多规格</label>     
              </div> 	
				

				
				
          <div class="form-group"> 
          
           		
				<label for="message-text " class="control-label">市场价格:</label> 
				 <span class="glyphicon glyphicon-jpy"></span>
				 <input name=""class="form-control serialNumber" style="width:80px; text-align:right;"/>
				 <label for="message-text " class="control-label">元</label> 
					
			
     			
        	</div>
 
           <div class="form-group"> 
     		  <label for="message-text" class="control-label">进货价格:</label> 
     		  		<span class="glyphicon glyphicon-jpy"></span>
        		 <input name="" class="form-control serialNumber" style="width:80px; text-align:right;"  />
				 <label for="message-text " class="control-label">元</label> 
        	</div>
        
                <div class="form-group "> 
               <label for="message-text" class="control-label" >指定物流:</label> 
               <select class="form-control" style="width:150px;" > 
               <option selected="selected">请选择</option> 
               <option>EMS</option> <option>顺丰快递</option> <option>圆通快递</option> <option>5</option> </select> 
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否航空禁运</label>     
              </div> 
              
             </form> 
            </div> 
            <div class="modal-footer" style="text-align:left;"> 

			 <button type="button" class="btn btn-primary" id="save"  style="margin-left:4px;">保存</button>
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>

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
       <!-- 新增modal -->
         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel"  style="font-weight:bold;">新增SPU</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              <div class="form-group "> 
               <label for="message-text" class="control-label" >产品类型:</label> 
               <select class="form-control" style="width:150px;" > <option selected="selected">请选择</option> <option>标准产品</option> <option>食品</option> <option>玩具</option> <option>5</option> </select> 
 
              </div>		 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label">产品编号:</label>     
               <input name="spuCode" type="text" class="form-control brandName" style="width:150px;" placeholder="请输入产品编号"   /> 
                <label for="recipient-name" class="control-label">选择品牌:</label> <select class="form-control" style="width:150px;"> <option selected="selected">请选择</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
             <label for="message-text" class="control-label">产品名称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:395px;" placeholder="请输入产品名称" /> 
             
               <label for="message-text" class="control-label">产品简称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:150px;" placeholder="请输入产品简称" />
              </div> 
             
			  <div class="form-group "> 
               <label for="message-text" class="control-label">产品产地:</label> 
               <input name="" class="form-control serialNumber" style="width:395px;" placeholder="请输入产地"  />      
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否多规格</label>     
              </div> 	
				

				
				
          <div class="form-group"> 
          
           		
				<label for="message-text " class="control-label">市场价格:</label> 
				<span class="glyphicon glyphicon-jpy"></span>
				 <input name="" class="form-control serialNumber" style="width:80px; text-align:right;" />
				 <label for="message-text " class="control-label">元</label> 
					
			
     			
        	</div>
 
           <div class="form-group"> 
     		  <label for="message-text" class="control-label">进货价格:</label> 
     		     <span class="glyphicon glyphicon-jpy"></span>
        		 <input name="" class="form-control serialNumber" style="width:80px; text-align:right;"/>
				 <label for="message-text " class="control-label">元</label> 
        	</div>
        
                <div class="form-group "> 
               <label for="message-text" class="control-label" >指定物流:</label> 
               <select class="form-control" style="width:150px;" > <option selected="selected">请选择</option> <option>EMS</option> <option>顺丰快递</option> <option>圆通快递</option> <option>5</option> </select> 
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否航空禁运</label>     
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
         <!-- modal end -->
         <!-- 查看详情modal -->
         <div class="modal fade" id="exampleModal3"tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">查看详情</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              <div class="form-group "> 
               <label for="message-text" class="control-label" >产品类型:</label> 
               <select class="form-control" style="width:150px;" > <option selected="selected">请选择</option> <option>标准产品</option> <option>食品</option> <option>玩具</option> <option>5</option> </select> 
 
              </div>		 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label">产品编号:</label>     
               <input name="spuCode" type="text" class="form-control brandName" style="width:150px;" placeholder="请输入产品编号"   /> 
                 <label for="recipient-name" class="control-label">选择品牌:</label> <select class="form-control" style="width:150px;"> <option selected="selected">请选择</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
             <label for="message-text" class="control-label">产品名称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:395px;" placeholder="请输入产品名称" /> 
              
               <label for="message-text" class="control-label">产品简称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:150px;" placeholder="请输入产品简称" />
              </div> 
             
			  <div class="form-group "> 
               <label for="message-text" class="control-label">产品产地:</label> 
               <input name="" class="form-control serialNumber" style="width:395px;" placeholder="请输入产地"  />
                             
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否多规格</label>     
              </div> 	
				

				
				
          <div class="form-group"> 
          
           		
				<label for="message-text " class="control-label">市场价格:</label> 
				<span class="glyphicon glyphicon-jpy"></span>
				 <input name="" class="form-control serialNumber" style="width:80px; text-align:right;" />
				 <label for="message-text " class="control-label">元</label> 
					
			
     			
        	</div>
 
           <div class="form-group"> 
     		  <label for="message-text" class="control-label">进货价格:</label> 
     		  	<span class="glyphicon glyphicon-jpy"></span>
        		 <input name="" class="form-control serialNumber" style="width:80px; text-align:right;"/>
				 <label for="message-text " class="control-label">元</label> 
        	</div>
        
                <div class="form-group "> 
               <label for="message-text" class="control-label" >指定物流:</label> 
               <select class="form-control" style="width:150px;" > <option selected="selected">请选择</option> <option>EMS</option> <option>顺丰快递</option> <option>圆通快递</option> <option>5</option> </select> 
                   
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否航空禁运</label>     
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
         <!-- modal end -->
        </div> 
       </div> 
      </div> 
 
    </div> 
   </div> 
  </div>  
 </body>
</html>