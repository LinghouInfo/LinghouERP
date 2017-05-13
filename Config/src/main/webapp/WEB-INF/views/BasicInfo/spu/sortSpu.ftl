<!DOCTYPE html>
<html>
 <head> 
  <title>SPU设置</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <link type="image/x-icon" rel="shortcut icon" href="/Config/images/favicon.ico" /> 
  <link rel="stylesheet" href="/Config/css/bootstrap/css/bootstrap.min.css" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap/css/leftMenu/default.css" /> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap.js"></script> 
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap-treeview.js"></script>
  <style>
  #goTopBtn 
  {
	  position: fixed;
	  line-height:36px;
	  width:36px;
	  bottom:35px;
	  height:36px;
	  cursor:pointer;
	  display:none; 
      background:url();
	} 
  </style> 
 </head> 
 <body> 
  <div class="container-fluid">
    <#include "header.ftl" > 
   <div class="row" style="margin-top:60px;"> 
    <div name="left" class="col-md-1">
    <div style="position: fixed; top: 100;opacity:0.75;">
      <#include "left_spu.ftl">
      
      </div> 
    </div> 
    <div class="col-md-11" style="padding:15px; padding-left:50px;"> 
     <main name="right" style=""> 
      <div> 
       <!-- Nav tabs --> 
       <ul class="nav nav-tabs" role="tablist"> 
        <li role="presentation" class="active"> <a href="#home" aria-controls="home" role="tab" data-toggle="tab">SPU分类</a></li> 
       </ul> 
       <!-- Tab panes --> 
       <div class="tab-content"> 
        <div role="tabpanel" class="tab-pane active" id="home"> 
        
           
           
           <br/>
           <div class="col-md-3" style="background-color:;">   
         
         
         <div style="position: fixed; top: 100;opacity:0.75;">
          <div class="form-group">
          
            <input  class="form-control"  value="">

             <button type="button" class="btn btn-primary" style="position:relative;top:-1px;">
				    <span class="glyphicon glyphicon-search"></span>&nbsp;查询分类
		     </button>
		     <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal3" data-whatever="@fat"    style="position:relative;top:-1px;">
				    <span class="glyphicon glyphicon-plus"></span>&nbsp;新增节点
		     </button>
		  
            
          </div>
         </div>
  <hr>
			
                 
        </div>

           <div class="col-md-3">
           <div id="treeview12" class=""> </div>
           
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

  
  
  <script>
 	 function operationChange(noedId,selectId){

		 	alert("当前 节点Id"+ noedId+"  当前 selectId"+selectId);	 	
		    var objS = document.getElementById(selectId);
		      var operation = objS.options[objS.selectedIndex].getAttribute('operation');
		         switch(operation)
		           {      
		               case "addNode":
		            	   alert('添加子节点');	            	   
		            	   $("#exampleModal").modal(); 	 
		            	      objS.options[0].selected = true;	   
		                      break;
		               case "deleteNode":
		            	   confirm('您确定删除这条节点吗？')
		         			  objS.options[0].selected = true;
		                      break;
		               case "updateNode":
		            	   alert('更新该节点');	            	   
		            	   $("#exampleModal2").modal(); 
		            	      objS.options[0].selected = true;
		                      break;
		               default:;
		           }   		 	
		 }
 </script>
  
  <!-- bootstrap treeview JavaScript -->
 	<script type="text/javascript">
 
 
	  $(function() {
       var defaultData = [
          {
            text: 'Parent 1',
            href: '#parent1',
            tags: ['4'],
            value:'2333',
            nodes: [
              {
                text: 'Child 1',
                href: '#child1',
                tags: ['2'],
                value:'2334',
                nodes: [
                  {
                    text: 'Grandchild 1',
                    href: '#grandchild1',
                    tags: ['0']
                  },
                  {
                    text: 'Grandchild 2',
                    href: '#grandchild2',
                    tags: ['0']
                  }
                ]
              },
              {
                text: 'Child 2',
                href: '#child2',
                tags: ['0']
              }
            ]
          },{
              text: 'Parent 2',
              href: '#parent2',
              tags: ['0']
            },{
                text: 'Parent 2',
                href: '#parent2',
                tags: ['0']
              },{
                  text: 'Parent 2',
                  href: '#parent2',
                  tags: ['0']
                },{
                    text: 'Parent 2',
                    href: '#parent2',
                    tags: ['0']
                  },{
                      text: 'Parent 2',
                      href: '#parent2',
                      tags: ['0']
                    },{
                        text: 'Parent 2',
                        href: '#parent2',
                        tags: ['0']
                      },{
                          text: 'Parent 2',
                          href: '#parent2',
                          tags: ['0']
                        },{
                            text: 'Parent 2',
                            href: '#parent2',
                            tags: ['0']
                          },{
                              text: 'Parent 2',
                              href: '#parent2',
                              tags: ['0']
                            },{
                                text: 'Parent 2',
                                href: '#parent2',
                                tags: ['0']
                              },{
                                  text: 'Parent 2',
                                  href: '#parent2',
                                  tags: ['0']
                                },{
                                    text: 'Parent 2',
                                    href: '#parent2',
                                    tags: ['0']
                                  },{
                                      text: 'Parent 2',
                                      href: '#parent2',
                                      tags: ['0']
                                    },{
                                        text: 'Parent 2',
                                        href: '#parent2',
                                        tags: ['0']
                                      },{
                                          text: 'Parent 2',
                                          href: '#parent2',
                                          tags: ['0']
                                        },{
                                            text: 'Parent 2',
                                            href: '#parent2',
                                            tags: ['0']
                                          },{
                                              text: 'Parent 2',
                                              href: '#parent2',
                                              tags: ['0']
                                            },{
                                                text: 'Parent 2',
                                                href: '#parent2',
                                                tags: ['0']
                                              },{
                                                  text: 'Parent 2',
                                                  href: '#parent2',
                                                  tags: ['0']
                                                },{
                                                    text: 'Parent 2',
                                                    href: '#parent2',
                                                    tags: ['0']
                                                  },{
                                                      text: 'Parent 2',
                                                      href: '#parent2',
                                                      tags: ['0']
                                                    },{
                                                        text: 'Parent 2',
                                                        href: '#parent2',
                                                        tags: ['0']
                                                      },{
                                                          text: 'Parent 2',
                                                          href: '#parent2',
                                                          tags: ['0']
                                                        },{
                                                            text: 'Parent 2',
                                                            href: '#parent2',
                                                            tags: ['0']
                                                          },{
                                                              text: 'Parent 2',
                                                              href: '#parent2',
                                                              tags: ['0']
                                                            },{
                                                                text: 'Parent 2',
                                                                href: '#parent2',
                                                                tags: ['0']
                                                              },{
                                                                  text: 'Parent 2',
                                                                  href: '#parent2',
                                                                  tags: ['0']
                                                                },
          {
            text: 'Parent 2',
            href: '#parent2',
            tags: ['0']
          },
          {
            text: 'Parent 3',
            href: '#parent3',
             tags: ['0']
          },
          {
            text: 'Parent 4',
            href: '#parent4',
            tags: ['0']
          },
          {
            text: 'Parent 5',
            href: '#parent5'  ,
            tags: ['0']
          }
        ];

      var json = '[' +
          '{' +
            '"text": "Parent 1",' +
            '"nodes": [' +
              '{' +
                '"text": "Child 1",' +
                '"nodes": [' +
                  '{' +
                    '"text": "Grandchild 1"' +
                  '},' +
                  '{' +
                    '"text": "Grandchild 2"' +
                  '}' +
                ']' +
              '},' +
              '{' +
                '"text": "Child 2"' +
              '}' +
            ']' +
          '},' +
          '{' +
            '"text": "Parent 2"' +
          '},' +
          '{' +
            '"text": "Parent 3"' +
          '},' +
          '{' +
            '"text": "Parent 4"' +
          '},' +
          '{' +
            '"text": "Parent 5"' +
          '}' +
        ']';
		
		
        $('#treeview3').treeview({
          levels: 99,
          data: defaultData
        });



        var $tree = $('#treeview12').treeview({
        	showTags: true, 
        	levels: 99,
          data: defaultData
        });
  		});
	  	</script> 

 
 
  <!-- END -->

  
     <div   class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;" > 
           <div class="modal-content"> 
		   
		   
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">新增节点</h4>
            </div> 
            <div class="modal-body"> 
            
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label" >节点名称:</label> 
               <input  name="spuSortName" type="text" class="form-control brandName"  style="width:400px;" placeholder="请输入节点名称"   />
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label" >节点序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;"  placeholder="请输入节点序号,序号越大查询越靠前"  />
              </div> 
		    </form> 
			 
            </div> 
            <div class="modal-footer" style="text-align:left;">
             <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;">保存</button>
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
             <div>       
            </div>
		   </div>
		   </div> 
		   </div>
		</div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   <div   class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;" > 
           <div class="modal-content"> 
		   
		   
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">新增子节点</h4>
            </div> 
            <div class="modal-body"> 
            
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label" >子节点名称:</label> 
               <input  name="spuSortName" type="text" class="form-control brandName"  style="width:400px;" placeholder="请输入子节点名称"   />
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label" >子节点序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;"  placeholder="请输入子点序号,序号越大查询越靠前"  />
              </div> 
		    </form> 
			 
            </div> 
            <div class="modal-footer" style="text-align:left;">
             <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;">保存</button>
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
             <div>       
            </div>
		   </div>
		   </div> 
		   </div>
		</div>
		
		
		
		<div   class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;" > 
           <div class="modal-content"> 
		   
		   
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">修改节点</h4>
            </div> 
            <div class="modal-body"> 
            
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label" >节点名称:</label> 
               <input  name="spuSortName" type="text" class="form-control brandName"  style="width:400px;" placeholder="请输入新的节点名称"   />
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label" >节点序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;"  placeholder="请输入新的节点序号,序号越大查询越靠前"  />
              </div> 
		    </form> 
			 
            </div> 
            <div class="modal-footer" style="text-align:left;">
             <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;">保存</button>
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
             <div>       
            </div>
		   </div>
		   </div> 
		   </div>
		</div>
		
		
  <div id="goTopBtn">回到顶部</div> 
   <script type="text/javascript"> 
    $(window).scroll(function(){  
	  var sc=$(window).scrollTop();  
	    var rwidth=$(window).width()   
		 if(sc>0){     $("#goTopBtn").css("display","block");
		      $("#goTopBtn").css("left",(rwidth-36)+"px")   
			   }else{    $("#goTopBtn").css("display","none"); 
			      }  });
				  
				  
		$("#goTopBtn").click(function(){   
		 var sc=$(window).scrollTop();   
		 $('body,html').animate({scrollTop:0},500);  })
		 </script> 
 </body>
</html>