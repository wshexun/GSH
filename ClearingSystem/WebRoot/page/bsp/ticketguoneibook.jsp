<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>BSP票本国内使用记录</title>
<meta charset="UTF-8">

<!-- IMPORT EASYUI -->
<jsp:include page="../../inc/easyui.jsp"></jsp:include>
<!-- External CSS -->
<!-- External JS -->
<script type="text/javascript">
	var currency_local = "${CURRENCY_UNIT}";
</script>
<script type="text/javascript" src="${basePath}files/js/page.bsp.ticketguoneibook.js"></script>

</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background: #f5f5f5;">
		<div style="margin-bottom:5px">
		    <a href="#" class="easyui-linkbutton" iconCls="bicon-refresh" plain="true">刷新</a>
		</div>
		<div>
			<form id="bspform">
				类型: <select class="easyui-combobox" name="bspType" id="bspType" panelHeight="auto" style="width:100px">
					<option value="2">国内</option>
					<option value="1">国际</option>
				</select> 
				出票日期：<input class="easyui-datebox" id="drawerDay" name="drawerDay" style="width:100px">
				<a href="#" class="easyui-linkbutton" data-options="editable:false" iconCls="bicon-search" id="btSearch">Search</a>
			</form>
		</div>
	</div>
	<div data-options="region:'center',border:false">
		<table id="bsp_ticketguoneibook_dg" class="easyui-datagrid" data-options="fit:true,
						  pagination:true,
						  pagePosition:'both',
						  rownumbers:true,
						  singleSelect:true,
						  method:'get',
						  showFooter: true,
						  border:false">
			<thead>
				<tr>
					<th data-options="checkbox:true"></th>
					<th data-options="field:'airlineCompany',width:100">航空公司</th>
					<th data-options="field:'ticketNo',width:100">票号</th>
					<th data-options="field:'drawerDay',width:100">出票日</th>
					<th data-options="field:'scny',width:100,formatter:window.bsp.ticketguoneibook.amountFormatter">SCNY</th>
					<th data-options="field:'tax',width:100,formatter:window.bsp.ticketguoneibook.amountFormatter">税</th>
					<th data-options="field:'moneyC',width:100,formatter:window.bsp.ticketguoneibook.amountFormatter">C金额（c）</th>
					<th data-options="field:'moneyZ',width:160,formatter:window.bsp.ticketguoneibook.amountFormatter">z金额（z）</th>
					<th data-options="field:'money',width:100,formatter:window.bsp.ticketguoneibook.amountFormatter">金额</th>
					<th data-options="field:'productNumber',width:100">产品单号</th>
					<th data-options="field:'affiliationPerson',width:100">归属人</th>
					<th data-options="field:'typeTgq',width:100">类型</th>
				</tr>
			</thead>
		</table>
	</div>

</body>
</html>
