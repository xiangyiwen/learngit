'use strict'

myapp.controller('NewsCtrl', function($scope, $log, $window, $http, $state, $timeout, codeService){

	var init = function(){
		$scope.modal = {
			"title": "添加新闻",
			"type": "0"
		}
		
		$scope.news = {
			"newsId":"",
			"title": "",
			"context": "",
			"createTime": 0
		};
	};
	
	init();
	
    var oTbl;
    $timeout(function(){
		oTbl = $("#tbl").DataTable({
			"ajax" : function (data, callback, settings) {
				//封装请求参数

				var returnData = {};
				returnData.recordsTotal = 0;//返回数据全部记录
				returnData.recordsFiltered = 0;//后台不实现过滤功能，每次查询均视作全部结果
				returnData.data = [];//返回的数据列表
				$http.post('news/getEntitys', {}).then(function(response){
//					console.log(response);
					var data = response.data;
					returnData.recordsTotal = data.length;//返回数据全部记录
					returnData.recordsFiltered = data.length;//后台不实现过滤功能，每次查询均视作全部结果
					returnData.data = data;//返回的数据列表
					// $log.info(resultData);
					callback(returnData);
				}, function(err){
					alert("数据加载请求异常");
				});
			},
			"serverSide": true,
			"language":$scope.datatables_lang,  //提示信息
			"renderer": "bootstrap",  //渲染样式：Bootstrap和jquery-ui
			"pagingType": "full_numbers",  //分页样式：simple,simple_numbers,full,full_numbers
			"bFilter": true,
			"bSort": false,
            /*"scrollX": true,*/
			"fnInitComplete": function (oSettings, json) {

			},
			"columns": [
				{
					data : function(row){
						return '<label class="i-checks"><input type="checkbox" value=""><i></i></label>';
					}
				},
                {
                    data : "title"
                },
				{
					data : "context"
				},
				{
					data : "createTime"
				},
				{
					data : function(row){
						var htmlStr = '<span class="btn btn-info btn-sm" style="margin-left:3px;" name="info">编辑</span>';
						
						htmlStr = '<span class="btn btn-primary btn-sm" name="del">删除</span>' + htmlStr;
						return htmlStr;
					}
				}
			]
		});

	}, 0);

    
    $scope.add = function(){
    	$("#myModal").modal("show");
    }
    
    
	
    $scope.save = function(){
    	console.log($scope.news);
    	var type = $scope.modal.type;
    	var url = type == '0' ? 'news/save' : 'news/update';
    	$http.post(url, $scope.news).then(function(response){
    		console.log(response);
    		oTbl.ajax.reload();
    		init();
    		$("#myModal").modal("hide");
		}, function(err){
			alert("数据加载请求异常");
		});
    }
    
    $("#tbl tbody").on('click', 'span[name="info"]', function(e){
        var rowData = oTbl.row($(e.target).parents("tr")).data();
//        console.log(rowData);
        $scope.modal = {
    			"title": "编辑新闻",
    			"type": "1"
    	}
        
        for(var key in $scope.news){
        	$scope.news[key] = rowData[key];
        }
        console.log($scope.news);
        $("#myModal").modal("show");
    });
    
    $("#tbl tbody").on('click', 'span[name="del"]', function(e){
        var rowData = oTbl.row($(e.target).parents("tr")).data();
        $http.post('news/delete', {'newsId': rowData.newsId}).then(function(response){
        	init();
        	oTbl.ajax.reload();
        	alert("删除成功!!!");
	}, function(err){
		alert("数据加载请求异常");
	});
    });
});
