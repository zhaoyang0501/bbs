jQuery.news = {
		newsDataTable:null,
		categoryChange:function(category){
			$("#category").val(category);
			jQuery.news.initSearchDataTable();
		},
		initSearchDataTable : function() {
			if (this.newsDataTable == null) {
				this.newsDataTable = $('#dt_table_view').dataTable({
					"sDom" : "<'row-fluid'<'span6'l>r>t<'row-fluid'<'span6'><'span6'p>>",
					"sPaginationType" : "bootstrap",
					"oLanguage" : {
						"sLengthMenu" : "每页显示 _MENU_",
						"sZeroRecords" : "抱歉， 暂时没有记录",
						"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
						"sSearch" : "",
						"sInfoEmpty" : "没有数据",
						"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前一页",
							"sNext" : "后一页",
							"sLast" : "尾页"
						}
					},
					"bAutoWidth" : false,
					"iDisplayLength" : 10,
					"aLengthMenu" : [ 5, 10, 25, 50],
					"bServerSide" : true,
					"sServerMethod" : "POST",
					"bProcessing" : true,
					"bSort" : false,
					"sAjaxSource" : $.ace.getContextPath() + "/newslist",
					"fnServerData" : function(sSource, aoData, fnCallback) {
						var search_input = $("#search_input").val();
						var category = $("#category").val();
						if (!!search_input) {
							aoData.push({
								"name" : "name",
								"value" : search_input
							});
						}
						if (!!category) {
							aoData.push({
								"name" : "category.id",
								"value" : category
							});
						}
						$.ajax({
							"dataType" : 'json',
							"type" : "POST",
							"url" : sSource,
							"data" : aoData,
							"success" : function(data){
								fnCallback(data.resultMap);
							}
						});
					},
					"aoColumns" : [ {
						"mDataProp" : "category.name"
					},{
						"mDataProp" : "title"
					},{
						"mDataProp" : "user.name"
					}, {
						"mDataProp" : "createDate"
					}],
					"aoColumnDefs" : [
						
						{
							'aTargets' : [1],
							'fnRender' : function(oObj, sVal) {
								return  "<a href=\"newsDetail?news.id="+oObj.aData.id+"\" target=\"_blank\">"+sVal+"</a>";
							}
						},
					 {
						'aTargets' : [ '_all' ],
						'bSortable' : false,
						'sClass' : 'center'
					}]

				});
			} else {
				var oSettings = this.newsDataTable.fnSettings();
				oSettings._iDisplayStart = 0;
				this.newsDataTable.fnDraw(oSettings);
			}

		}
};