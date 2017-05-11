<!DOCTYPE html>
<html>
 <head> 
  <title>首页</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
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
      <#include "left_index.ftl"/>
    </div> 
    <div class="col-md-11" style="padding:15px; padding-left:50px;"> 
     <main name="right" style="">
       this is index... 
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
       <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
        <div class="modal-content"> 
         <div class="modal-header"> 
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
          <h4 class="modal-title" id="exampleModalLabel">新增品牌</h4> 
         </div> 
         <div class="modal-body"> 
          <form> 
           <div class="form-group"> 
            <label for="recipient-name" class="control-label"></label> 
            <input name="brandName" type="text" class="form-control brandName" style="width:400px;" placeholder="请输入品牌名称" onpaste="return false" oncontextmenu="return false" /> 
           </div> 
           <div class="form-group "> 
            <label for="message-text" class="control-label"></label> 
            <input name="serialNumber" class="form-control serialNumber" style="width:400px;" placeholder="请输入品牌序号,序号越大查询越靠前" onpaste="return false" oncontextmenu="return false" /> 
           </div> 
          </form> 
         </div> 
         <div class="modal-footer"> 
             <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;>保存</button> 
             <button type="button" class="btn btn-default" data-dismiss="modal" ">关闭</button> 
          <div></div> 
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
     </main>
    </div>
   </div>
  </div>
 </body>
</html>