<nav class="col-md-1 hidden-xs-down bg-faded sidebar" style=" position: fixed;"> 
   <ul id="accordion" class="accordion" style="border-bottom:#CCC 1px solid"> 
    <li>   
     <div class="link" style=" border-right:  #CCC 1px solid;"> 
      <i class="fa fa-globe"></i> 
      <span>品牌设置</span> 
      <i class="fa fa-chevron-down"></i> 
     </div> 
	     <ul class="submenu"> 
	      <li><a href="/Config/findBrand">品牌查询</a></li> 
	      <li><a href="#" data-toggle="modal" data-target="#myModal">品牌添加</a></li>
	      <li><a href="/Config/modifyBrand">品牌修改</a></li>
	      <li><a href="#">品牌删除</a></li>
	     </ul> 
     </li> 
</nav>
<style type="text/css">	
#myModal{position: relative;top:300px; left:800px; width:500px; }
.modal-backdrop {
  opacity: 0 !important;
  filter: alpha(opacity=0) !important;
}#myModal{position: relative;top:300px; left:800px; width:500px; }
.modal-backdrop {
  opacity: 0 !important;
  filter: alpha(opacity=0) !important;
}
.form-control{font-size: 14px;}
.form-control{font-size: 14px;}
</style>
<form action="" method="post">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  
  <div class="modal-dialog">  
    <div class="modal-content">  
      <div class="modal-header">       
        <h3 class="modal-title">新建品牌</h3>  
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>  
      </div>  
      <div class="modal-body">  
       <input class="form-control"  placeholder="请输入品牌名称"/><br/>
	<input class="form-control" placeholder="输入品牌序号(序号越大越靠前)"/>
      </div>  
      <div class="modal-footer">  
        <button type="button" class="btn btn-primary">
					保存
				</button>
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
      </div>  
    </div><!-- /.modal-content -->  
  </div><!-- /.modal-dialog -->  
</div><!-- /.modal -->  
</form>
<script>
$(function () { $('#myModal').modal({
	keyboard: true;
})
});
</script>



