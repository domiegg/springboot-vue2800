<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>


    <div class="modal fade" id="kechengYesnoTypesModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">审核</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        审核：
                        <div class="col-sm-9">
                            <input type="hidden" id="kechengYesnoTypesId">
                            <select id="kechengYesnoTypes" name="kechengYesnoTypes" class="form-control">
                                <option value="2">通过</option>
                                <option value="3">拒绝</option>
                            </select>
                        </div>
                    </div>
                       <div class="row">
                           审核原因：
                           <textarea style="width: 450px"  id="kechengYesnoText" name="kechengYesnoText" class="form-control"placeholder="审核原因"></textarea>
                       </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    <button type="button" id="receive" onclick="kechengYesnoTypesShenhe()" class="btn btn-primary">提交</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Pre Loader -->
    <div class="loading">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
<!--/Pre Loader -->
    <div class="wrapper">
        <!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <%@ include file="../../static/topNav.jsp" %>
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="navUl" class="navbar-nav mr-auto">
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">课程信息管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">课程信息管理</li>
                            <li class="breadcrumb-item active">课程信息列表</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->

            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">课程信息列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        课程名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="kechengNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="课程名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        课程类型
                                        <div class="layui-input-inline">
                                            <select name="kechengTypesSelectSearch"  style="width: 150px;" id="kechengTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        班级
                                        <div class="layui-input-inline">
                                            <select name="banjiTypesSelectSearch"  style="width: 150px;" id="banjiTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        工号
                                        <div class="layui-input-inline">
                                            <input type="text" id="jiaoshiUuidNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="工号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        教师姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="jiaoshiNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="教师姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-primary 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-primary 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >工号</th>
                                        <th >教师姓名</th>
                                        <th >头像</th>
                                        <th >联系方式</th>
                                        <th>课程名称</th>
                                        <th>课程图片</th>
                                        <th>上课时间</th>
                                        <th>结束时间</th>
                                        <th>课程类型</th>
                                        <th>班级</th>
                                        <th>学期</th>
                                        <th>星期</th>
                                        <th>第几节</th>
                                        <th>课程审核</th>
                                        <th>审核原因</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->

        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "kecheng";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->

        <!-- 本表的级联字段表 -->
        var kechengTypesOptions = [];
        var banjiTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //工号
            var jiaoshiUuidNumberSearchInput = $('#jiaoshiUuidNumberSearch');
            if( jiaoshiUuidNumberSearchInput != null){
                if (jiaoshiUuidNumberSearchInput.val() != null && jiaoshiUuidNumberSearchInput.val() != '') {
                    searchForm.jiaoshiUuidNumber = $('#jiaoshiUuidNumberSearch').val();
                }
            }
                     
                            //教师姓名
            var jiaoshiNameSearchInput = $('#jiaoshiNameSearch');
            if( jiaoshiNameSearchInput != null){
                if (jiaoshiNameSearchInput.val() != null && jiaoshiNameSearchInput.val() != '') {
                    searchForm.jiaoshiName = $('#jiaoshiNameSearch').val();
                }
            }
                                                                                                                                                                                                                                <!-- 本表的查询条件 -->

             
            //课程名称
            var kechengNameSearchInput = $('#kechengNameSearch');
            if( kechengNameSearchInput != null){
                if (kechengNameSearchInput.val() != null && kechengNameSearchInput.val() != '') {
                    searchForm.kechengName = $('#kechengNameSearch').val();
                }
            }
                 
                //课程类型
            var kechengTypesSelectSearchInput = document.getElementById("kechengTypesSelectSearch");
            if(kechengTypesSelectSearchInput != null){
                var kechengTypesIndex = kechengTypesSelectSearchInput.selectedIndex;
                if( kechengTypesIndex  != 0){
                    searchForm.kechengTypes= document.getElementById("kechengTypesSelectSearch").options[kechengTypesIndex].value;
                }
            }
     
                //班级
            var banjiTypesSelectSearchInput = document.getElementById("banjiTypesSelectSearch");
            if(banjiTypesSelectSearchInput != null){
                var banjiTypesIndex = banjiTypesSelectSearchInput.selectedIndex;
                if( banjiTypesIndex  != 0){
                    searchForm.banjiTypes= document.getElementById("banjiTypesSelectSearch").options[banjiTypesIndex].value;
                }
            }
                                            getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("kecheng/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                kechengDelete: 1,
                //本表的
                kechengName: searchForm.kechengName,
                kechengTypes: searchForm.kechengTypes,
                banjiTypes: searchForm.banjiTypes,
            //级联表的
                jiaoshiUuidNumber: searchForm.jiaoshiUuidNumber,
                jiaoshiName: searchForm.jiaoshiName,



            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //工号
            var jiaoshiUuidNumberCell = document.createElement('td');
            jiaoshiUuidNumberCell.innerHTML = item.jiaoshiUuidNumber;
            row.appendChild(jiaoshiUuidNumberCell);


                    //教师姓名
            var jiaoshiNameCell = document.createElement('td');
            jiaoshiNameCell.innerHTML = item.jiaoshiName;
            row.appendChild(jiaoshiNameCell);


                //头像
            var jiaoshiPhotoCell = document.createElement('td');
            var jiaoshiPhotoImg = document.createElement('img');
            var jiaoshiPhotoImgValue = item.jiaoshiPhoto;
            if(jiaoshiPhotoImgValue !=null && jiaoshiPhotoImgValue !='' && jiaoshiPhotoImgValue !='null'){
                    jiaoshiPhotoImg.setAttribute('src', jiaoshiPhotoImgValue);
                    jiaoshiPhotoImg.setAttribute('height', 100);
                    jiaoshiPhotoImg.setAttribute('width', 100);
                    jiaoshiPhotoCell.appendChild(jiaoshiPhotoImg);
            }else{
                    jiaoshiPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(jiaoshiPhotoCell);


                    //联系方式
            var jiaoshiPhoneCell = document.createElement('td');
            jiaoshiPhoneCell.innerHTML = item.jiaoshiPhone;
            row.appendChild(jiaoshiPhoneCell);


            //课程名称
            var kechengNameCell = document.createElement('td');
            kechengNameCell.innerHTML = item.kechengName;
            row.appendChild(kechengNameCell);

                //课程图片
            var kechengPhotoCell = document.createElement('td');
            var kechengPhotoImg = document.createElement('img');
            var kechengPhotoImgValue = item.kechengPhoto;
            if(kechengPhotoImgValue !=null && kechengPhotoImgValue !='' && kechengPhotoImgValue !='null'){
                kechengPhotoImg.setAttribute('src', kechengPhotoImgValue);
                kechengPhotoImg.setAttribute('height', 100);
                kechengPhotoImg.setAttribute('width', 100);
                kechengPhotoCell.appendChild(kechengPhotoImg);
            }else{
                kechengPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(kechengPhotoCell);

            //上课时间
            var shangkeTimeCell = document.createElement('td');
            shangkeTimeCell.innerHTML = item.shangkeTime;
            row.appendChild(shangkeTimeCell);


            //结束时间
            var xiakeTimeCell = document.createElement('td');
            xiakeTimeCell.innerHTML = item.xiakeTime;
            row.appendChild(xiakeTimeCell);


            //课程类型
            var kechengTypesCell = document.createElement('td');
            kechengTypesCell.innerHTML = item.kechengValue;
            row.appendChild(kechengTypesCell);


            //班级
            var banjiTypesCell = document.createElement('td');
            banjiTypesCell.innerHTML = item.banjiValue;
            row.appendChild(banjiTypesCell);


            //学期
            var xueqiTypesCell = document.createElement('td');
            xueqiTypesCell.innerHTML = item.xueqiValue;
            row.appendChild(xueqiTypesCell);


            //星期
            var xingqiTypesCell = document.createElement('td');
            xingqiTypesCell.innerHTML = item.xingqiValue;
            row.appendChild(xingqiTypesCell);


            //第几节
            var jiekeTypesCell = document.createElement('td');
            jiekeTypesCell.innerHTML = item.jiekeValue;
            row.appendChild(jiekeTypesCell);


            //课程审核
            var kechengYesnoTypesCell = document.createElement('td');
            kechengYesnoTypesCell.innerHTML = item.kechengYesnoValue;
            row.appendChild(kechengYesnoTypesCell);


            //审核原因
            var kechengYesnoTextCell = document.createElement('td');
            kechengYesnoTextCell.innerHTML = item.kechengYesnoText;
            row.appendChild(kechengYesnoTextCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            if(item.kechengYesnoTypes == 1){
                //审核按钮
                var yesnoBtn = document.createElement('button');
                var yesnoAttr = 'openYesnoTypes(' + item.id + ')';
                yesnoBtn.setAttribute("type", "button");
                yesnoBtn.setAttribute("class", "btn btn-warning btn-sm 审核");
                yesnoBtn.setAttribute("onclick", yesnoAttr);
                yesnoBtn.innerHTML = "审核";
                btnGroup.appendChild(yesnoBtn);
            }
            var editBtn = document.createElement('button');
            var editAttr = 'shenqingquxiaopaike(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 申请");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "申请取消排课";
            btnGroup.appendChild(editBtn);

            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("kecheng/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }
        function shenqingquxiaopaike(id) {
            var mymessage = confirm("真的要申请取消吗？");
            if (mymessage == true) {
                var data = {
                    kechengId:id,
                    paiekequxiaoYesnoTypes:1
                };
                httpJson("paiekequxiao/save", "POST", data, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('申请成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addkecheng", "addkecheng");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }


    //填充级联表搜索下拉框
                                         
                     
                                                                                                                                                                                                                            
    //填充本表搜索下拉框
             
                 
        function kechengTypesSelectSearch() {
            var kechengTypesSelectSearch = document.getElementById('kechengTypesSelectSearch');
            if(kechengTypesSelectSearch != null) {
                kechengTypesSelectSearch.add(new Option('-请选择-',''));
                if (kechengTypesOptions != null && kechengTypesOptions.length > 0){
                    for (var i = 0; i < kechengTypesOptions.length; i++) {
                            kechengTypesSelectSearch.add(new Option(kechengTypesOptions[i].indexName,kechengTypesOptions[i].codeIndex));
                    }
                }
            }
        }
     
        function banjiTypesSelectSearch() {
            var banjiTypesSelectSearch = document.getElementById('banjiTypesSelectSearch');
            if(banjiTypesSelectSearch != null) {
                banjiTypesSelectSearch.add(new Option('-请选择-',''));
                if (banjiTypesOptions != null && banjiTypesOptions.length > 0){
                    for (var i = 0; i < banjiTypesOptions.length; i++) {
                            banjiTypesSelectSearch.add(new Option(banjiTypesOptions[i].indexName,banjiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                
    //查询级联表搜索条件所有列表

    //查询当前表搜索条件所有列表
            function kechengTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=kecheng_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        kechengTypesOptions = res.data.list;
                    }
                });
            }
            function banjiTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=banji_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        banjiTypesOptions = res.data.list;
                    }
                });
            }










            function openYesnoTypes(id) {
                $("#kechengYesnoTypesId").val(id)
                $('#kechengYesnoTypesModal').modal('show');
            }

            function kechengYesnoTypesShenhe() {
                var mymessage = confirm("真的要确定这个审核结果吗？");
                if (mymessage == true) {
                    let data = {};
                    data["id"] = $("#kechengYesnoTypesId").val();
                    if($("#kechengYesnoTypes option:selected").val() == 2 || $("#kechengYesnoTypes option:selected").val() ==3){
                        data["kechengYesnoTypes"] = $("#kechengYesnoTypes option:selected").val();//获取选中的审核结果
                    }else{
                        alert("请选择审核结果")
                        return false;
                    }
                    data["kechengYesnoText"] = $("#kechengYesnoText").val();
                    httpJson("kecheng/update", "POST", data, (res) => {
                        if(res.code == 0){
                            alert('审核成功');
                            getDataList();
                        }else{
                            alert('审核失败');
                        }
                        $('#kechengYesnoTypesModal').modal('hide');
                        $("#kechengYesnoTypes").val(1);
                        $("#kechengYesnoTypesId").val(null);
                        $("#kechengYesnoText").val(null);
                    });
                }else {
                    $('#kechengYesnoTypesModal').modal('hide');
                    $("#kechengYesnoTypes").val(1);
                    $("#kechengYesnoTypesId").val(null);
                    $("#kechengYesnoText").val(null);
                    alert("已取消操作");
                }
            }

        layui.use(['layer', 'carousel', 'jquery', 'form', 'upload', 'laydate', 'rate'], function () {
            var rate = layui.rate;//评分
            var jquery = layui.jquery;//jquery
            var $=jquery;

        });


        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框

            //查询当前表的搜索下拉框
            kechengTypesSelect();
            banjiTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                 
                         
                                                                                                                                                                                                                                                                        
        //当前表的下拉框赋值
                                     
                                                 
            kechengTypesSelectSearch();
             
            banjiTypesSelectSearch();
                                                                                                
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>
