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
          
          	 <label class="from-label">
          	 查找分类:
          	 </label>
            <input type="input" class="form-control" id="input-check-node" value="">
            <button type="button" class="btn btn-success check-node" id="btn-check-node"
            onclick="window.location.hash = '#de';" 
            >查询分类</button>
          </div>
         </div>
          
          
          
          
          <hr>
			
          
          
        </div>
           
           <div class="col-md-3">
           <div id="treeview-checkable" class=""> </div>
           
		</div>
         
         
         
       
         

       <!-- 新增modal -->
         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel">新增SPU</h4> 
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
                &nbsp;&nbsp; <label for="recipient-name" class="control-label">选择品牌:</label> <select class="form-control" style="width:150px;"> <option selected="selected">请选择</option> <option>EMS</option> <option>顺风快递</option> <option>4</option> <option>5</option> </select> 
              </div> 
              <div class="form-group "> 
             <label for="message-text" class="control-label">产品名称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:395px;" placeholder="请输入产品名称" /> 
                 &nbsp;&nbsp;
               <label for="message-text" class="control-label">产品简称:</label> 
               <input name="spuName" class="form-control serialNumber" style="width:150px;" placeholder="请输入产品简称" />
              </div> 
             
			  <div class="form-group "> 
               <label for="message-text" class="control-label">产品产地:</label> 
               <input name="" class="form-control serialNumber" style="width:395px;" placeholder="请输入产地"  />
                                  &nbsp;&nbsp;
                  <input type="checkbox"   value="1" class="form-control" style="height:12px; " /> 
                  <label class="form-label">是否多规格</label>     
              </div> 	
				

				
				
          <div class="form-group"> 
          
           		
				<label for="message-text " class="control-label">市场价格:</label> 
				 <input name="" class="form-control serialNumber" style="width:80px;" placeholder="$"  />
				 <label for="message-text " class="control-label">元</label> 
					
			
     			
        	</div>
 
           <div class="form-group"> 
     		  <label for="message-text" class="control-label">进货价格:</label> 
        		 <input name="" class="form-control serialNumber" style="width:80px;" placeholder="$"  />
				 <label for="message-text " class="control-label">元</label> 
        	</div>
        
                <div class="form-group "> 
               <label for="message-text" class="control-label" >指定物流:</label> 
               <select class="form-control" style="width:150px;" > <option selected="selected">请选择</option> <option>EMS</option> <option>顺丰快递</option> <option>圆通快递</option> <option>5</option> </select> 
                   &nbsp;&nbsp; 
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
     </main> 
    </div> 
   </div> 
  </div>  
  
  
  <!-- bootstrap treeview JavaScript -->
  
  <script type="text/javascript">

	  $(function() {

        var defaultData = [
          {
            text: '电子产品类',
            href: '#parent1',
            tags: ['4'],
            nodes: [
              {
                text: '移动电源',
                href: '#child1',
                tags: ['2'],
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
                text: '数码产品',
                href: '#child2',
                tags: ['0']
              }
            ]
          },   {
              text: '电子产品类',
              href: '#parent1',
              tags: ['4'],
              nodes: [
                {
                  text: '移动电源',
                  href: '#child1',
                  tags: ['2'],
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
                  text: '数码产品',
                  href: '#child2',
                  tags: ['0']
                }
              ]
            },   {
                text: '电子产品类',
                href: '#parent1',
                tags: ['4'],
                nodes: [
                  {
                    text: '移动电源',
                    href: '#child1',
                    tags: ['2'],
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
                    text: '数码产品',
                    href: '#child2',
                    tags: ['0']
                  }
                ]
              },   {
                  text: '电子产品类',
                  href: '#parent1',
                  tags: ['4'],
                  nodes: [
                    {
                      text: '移动电源',
                      href: '#child1',
                      id:'de',
                      tags: ['2'],
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
                      text: '数码产品',
                      href: '#child2',
                      tags: ['0']
                    }
                  ]
                },   {
                    text: '电子产品类',
                    href: '#parent1',
                    tags: ['4'],
                    nodes: [
                      {
                        text: '移动电源',
                        href: '#child1',
                        tags: ['2'],
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
                        text: '数码产品',
                        href: '#child2',
                        tags: ['0']
                      }
                    ]
                  },   {
                      text: '电子产品类',
                      href: '#parent1',
                      tags: ['4'],
                      nodes: [
                        {
                          text: '移动电源',
                          href: '#child1',
                          tags: ['2'],
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
                          text: '数码产品',
                          href: '#child2',
                          tags: ['0']
                        }
                      ]
                    },   {
                        text: '电子产品类',
                        href: '#parent1',
                        tags: ['4'],
                        nodes: [
                          {
                            text: '移动电源',
                            href: '#child1',
                            tags: ['2'],
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
                            text: '数码产品',
                            href: '#child2',
                            tags: ['0']
                          }
                        ]
                      },   {
                          text: '电子产品类',
                          href: '#parent1',
                          tags: ['4'],
                          nodes: [
                            {
                              text: '移动电源',
                              href: '#child1',
                              tags: ['2'],
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
                              text: '数码产品',
                              href: '#child2',
                              tags: ['0']
                            }
                          ]
                        },   {
                            text: '电子产品类',
                            href: '#parent1',
                            tags: ['4'],
                            nodes: [
                              {
                                text: '移动电源',
                                href: '#child1',
                                tags: ['2'],
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
                                text: '数码产品',
                                href: '#child2',
                                tags: ['0']
                              }
                            ]
                          },   {
                              text: '电子产品类',
                              href: '#parent1',
                              tags: ['4'],
                              nodes: [
                                {
                                  text: '移动电源',
                                  href: '#child1',
                                  tags: ['2'],
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
                                  text: '数码产品',
                                  href: '#child2',
                                  tags: ['0']
                                }
                              ]
                            },   {
                                text: '电子产品类',
                                href: '#parent1',
                                tags: ['4'],
                                nodes: [
                                  {
                                    text: '移动电源',
                                    href: '#child1',
                                    tags: ['2'],
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
                                    text: '数码产品',
                                    href: '#child2',
                                    tags: ['0']
                                  }
                                ]
                              },   {
                                  text: '电子产品类',
                                  href: '#parent1',
                                  tags: ['4'],
                                  nodes: [
                                    {
                                      text: '移动电源',
                                      href: '#child1',
                                      tags: ['2'],
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
                                      text: '数码产品',
                                      href: '#child2',
                                      tags: ['0']
                                    }
                                  ]
                                },   {
                                    text: '电子产品类',
                                    href: '#parent1',
                                    tags: ['4'],
                                    nodes: [
                                      {
                                        text: '移动电源',
                                        href: '#child1',
                                        tags: ['2'],
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
                                        text: '数码产品',
                                        href: '#child2',
                                        tags: ['0']
                                      }
                                    ]
                                  },   {
                                      text: '电子产品类',
                                      href: '#parent1',
                                      tags: ['4'],
                                      nodes: [
                                        {
                                          text: '移动电源',
                                          href: '#child1',
                                          tags: ['2'],
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
                                          text: '数码产品',
                                          href: '#child2',
                                          tags: ['0']
                                        }
                                      ]
                                    },   {
                                        text: '电子产品类',
                                        href: '#parent1',
                                        tags: ['4'],
                                        nodes: [
                                          {
                                            text: '移动电源',
                                            href: '#child1',
                                            tags: ['2'],
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
                                            text: '数码产品',
                                            href: '#child2',
                                            tags: ['0']
                                          }
                                        ]
                                      },
          {
            text: '皮具箱包类',
            href: '#parent2',
            tags: ['0'],
			 nodes: [
              {
                text: '皮具系列',
                href: '#child1',
                tags: ['2'],
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
                text: '箱包系列',
                href: '#child2',
                tags: ['0']
              }
            ]
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

        var alternateData = [
          {
            text: 'Parent 1',
            tags: ['2'],
            nodes: [
              {
                text: 'Child 1',
                tags: ['3'],
                nodes: [
                  {
                    text: 'Grandchild 1',
                    tags: ['6']
                  },
                  {
                    text: 'Grandchild 2',
                    tags: ['3']
                  }
                ]
              },
              {
                text: 'Child 2',
                tags: ['3']
              }
            ]
          },
          {
            text: 'Parent 2',
            tags: ['7']
          },
          {
            text: 'Parent 3',
            icon: 'glyphicon glyphicon-earphone',
            href: '#demo',
            tags: ['11']
          },
          {
            text: 'Parent 4',
            icon: 'glyphicon glyphicon-cloud-download',
            href: '/demo.html',
            tags: ['19'],
            selected: true
          },
          {
            text: 'Parent 5',
            icon: 'glyphicon glyphicon-certificate',
            color: 'pink',
            backColor: 'red',
            href: 'http://www.tesco.com',
            tags: ['available','0']
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


        $('#treeview1').treeview({
          data: defaultData
        });

        $('#treeview2').treeview({
          levels: 1,
          data: defaultData
        });

        $('#treeview3').treeview({
          levels: 99,
          data: defaultData
        });

        $('#treeview4').treeview({

          color: "#428bca",
          data: defaultData
        });

        $('#treeview5').treeview({
          color: "#428bca",
          expandIcon: 'glyphicon glyphicon-chevron-right',
          collapseIcon: 'glyphicon glyphicon-chevron-down',
          nodeIcon: 'glyphicon glyphicon-bookmark',
          data: defaultData
        });

        $('#treeview6').treeview({
          color: "#428bca",
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          showTags: true,
          data: defaultData
        });

        $('#treeview7').treeview({
          color: "#428bca",
          showBorder: false,
          data: defaultData
        });

        $('#treeview8').treeview({
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          color: "yellow",
          backColor: "purple",
          onhoverColor: "orange",
          borderColor: "red",
          showBorder: false,
          showTags: true,
          highlightSelected: true,
          selectedColor: "yellow",
          selectedBackColor: "darkorange",
          data: defaultData
        });

        $('#treeview9').treeview({
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          color: "yellow",
          backColor: "purple",
          onhoverColor: "orange",
          borderColor: "red",
          showBorder: false,
          showTags: true,
          highlightSelected: true,
          selectedColor: "yellow",
          selectedBackColor: "darkorange",
          data: alternateData
        });

        $('#treeview10').treeview({
          color: "#428bca",
          enableLinks: true,
          data: defaultData
        });



        var $searchableTree = $('#treeview-searchable').treeview({
          data: defaultData,
        });

        var search = function(e) {
          var pattern = $('#input-search').val();
     
          var options = {
            ignoreCase: $('#chk-ignore-case').is(':checked'),
            exactMatch: $('#chk-exact-match').is(':checked'),
            revealResults: $('#chk-reveal-results').is(':checked')
          };
          var results = $searchableTree.treeview('search', [ pattern, options ]);

          var output = '<p>' + results.length + ' matches found</p>';
          $.each(results, function (index, result) {
            output += '<p>- ' + result.text + '</p>';
          });
          $('#search-output').html(output);
        }

        $('#btn-search').on('click', search);
        $('#input-search').on('keyup', search);

        $('#btn-clear-search').on('click', function (e) {
          $searchableTree.treeview('clearSearch');
          $('#input-search').val('');
          $('#search-outponkeyup ut').html('');
         
        });


        var initSelectableTree = function() {
          return $('#treeview-selectable').treeview({
            data: defaultData,
            multiSelect: $('#chk-select-multi').is(':checked'),
            onNodeSelected: function(event, node) {
              $('#selectable-output').prepend('<p>' + node.text + ' was selected</p>');
            },
            onNodeUnselected: function (event, node) {
              $('#selectable-output').prepend('<p>' + node.text + ' was unselected</p>');
            }
          });
        };
        var $selectableTree = initSelectableTree();

        var findSelectableNodes = function() {
          return $selectableTree.treeview('search', [ $('#input-select-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var selectableNodes = findSelectableNodes();

        $('#chk-select-multi:checkbox').on('change', function () {
          console.log('multi-select change');
          $selectableTree = initSelectableTree();
          selectableNodes = findSelectableNodes();          
        });

        // Select/unselect/toggle nodes
        $('#input-select-node').on('keyup', function (e) {
          selectableNodes = findSelectableNodes();
          $('.select-node').prop('disabled', !(selectableNodes.length >= 1));
        });

        $('#btn-select-node.select-node').on('click', function (e) {
          $selectableTree.treeview('selectNode', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });

        $('#btn-unselect-node.select-node').on('click', function (e) {
          $selectableTree.treeview('unselectNode', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });

        $('#btn-toggle-selected.select-node').on('click', function (e) {
          $selectableTree.treeview('toggleNodeSelected', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });



        var $expandibleTree = $('#treeview-expandible').treeview({
          data: defaultData,
          onNodeCollapsed: function(event, node) {
            $('#expandible-output').prepend('<p>' + node.text + ' was collapsed</p>');
          },
          onNodeExpanded: function (event, node) {
            $('#expandible-output').prepend('<p>' + node.text + ' was expanded</p>');
          }
        });

        var findExpandibleNodess = function() {
          return $expandibleTree.treeview('search', [ $('#input-expand-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var expandibleNodes = findExpandibleNodess();

        // Expand/collapse/toggle nodes
        $('#input-expand-node').on('keyup', function (e) {
          expandibleNodes = findExpandibleNodess();
          $('.expand-node').prop('disabled', !(expandibleNodes.length >= 1));
        });

        $('#btn-expand-node.expand-node').on('click', function (e) {
          var levels = $('#select-expand-node-levels').val();
          $expandibleTree.treeview('expandNode', [ expandibleNodes, { levels: levels, silent: $('#chk-expand-silent').is(':checked') }]);
        });

        $('#btn-collapse-node.expand-node').on('click', function (e) {
          $expandibleTree.treeview('collapseNode', [ expandibleNodes, { silent: $('#chk-expand-silent').is(':checked') }]);
        });

        $('#btn-toggle-expanded.expand-node').on('click', function (e) {
          $expandibleTree.treeview('toggleNodeExpanded', [ expandibleNodes, { silent: $('#chk-expand-silent').is(':checked') }]);
        });

        // Expand/collapse all
        $('#btn-expand-all').on('click', function (e) {
          var levels = $('#select-expand-all-levels').val();
          $expandibleTree.treeview('expandAll', { levels: levels, silent: $('#chk-expand-silent').is(':checked') });
        });

        $('#btn-collapse-all').on('click', function (e) {
          $expandibleTree.treeview('collapseAll', { silent: $('#chk-expand-silent').is(':checked') });
        });



        var $checkableTree = $('#treeview-checkable').treeview({
          data: defaultData,
          showIcon: false,
          showCheckbox: true,
          onNodeChecked: function(event, node) {
            $('#checkable-output').prepend('<p>' + node.text + ' 选中</p>');
          },
          onNodeUnchecked: function (event, node) {
            $('#checkable-output').prepend('<p>' + node.text + ' 取消选中</p>');
          }
        });

        var findCheckableNodess = function() {
          return $checkableTree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var checkableNodes = findCheckableNodess();

        // Check/uncheck/toggle nodes
        $('#input-check-node').on('keyup', function (e) {
          checkableNodes = findCheckableNodess();
          $('.check-node').prop('disabled', !(checkableNodes.length >= 1));
        });

        $('#btn-check-node.check-node').on('click', function (e) {
          $checkableTree.treeview('checkNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-uncheck-node.check-node').on('click', function (e) {
          $checkableTree.treeview('uncheckNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-toggle-checked.check-node').on('click', function (e) {
          $checkableTree.treeview('toggleNodeChecked', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        // Check/uncheck all
        $('#btn-check-all').on('click', function (e) {
          $checkableTree.treeview('checkAll', { silent: $('#chk-check-silent').is(':checked') });
        });

        $('#btn-uncheck-all').on('click', function (e) {
          $checkableTree.treeview('uncheckAll', { silent: $('#chk-check-silent').is(':checked') });
        });



        var $disabledTree = $('#treeview-disabled').treeview({
          data: defaultData,
          onNodeDisabled: function(event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was disabled</p>');
          },
          onNodeEnabled: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was enabled</p>');
          },
          onNodeCollapsed: function(event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was collapsed</p>');
          },
          onNodeUnchecked: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was unchecked</p>');
          },
          onNodeUnselected: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was unselected</p>');
          }
        });

        var findDisabledNodes = function() {
          return $disabledTree.treeview('search', [ $('#input-disable-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var disabledNodes = findDisabledNodes();

        // Expand/collapse/toggle nodes
        $('#input-disable-node').on('keyup', function (e) {
          disabledNodes = findDisabledNodes();
          $('.disable-node').prop('disabled', !(disabledNodes.length >= 1));
        });

        $('#btn-disable-node.disable-node').on('click', function (e) {
          $disabledTree.treeview('disableNode', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        $('#btn-enable-node.disable-node').on('click', function (e) {
          $disabledTree.treeview('enableNode', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        $('#btn-toggle-disabled.disable-node').on('click', function (e) {
          $disabledTree.treeview('toggleNodeDisabled', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        // Expand/collapse all
        $('#btn-disable-all').on('click', function (e) {
          $disabledTree.treeview('disableAll', { silent: $('#chk-disable-silent').is(':checked') });
        });

        $('#btn-enable-all').on('click', function (e) {
          $disabledTree.treeview('enableAll', { silent: $('#chk-disable-silent').is(':checked') });
        });



        var $tree = $('#treeview12').treeview({
          data: json
        });
  		});
	  	</script>
  
  

  
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