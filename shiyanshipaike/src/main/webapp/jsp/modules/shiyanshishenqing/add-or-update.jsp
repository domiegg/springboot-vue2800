<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
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
                    <h3 class="block-title">编辑实验室申请</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">实验室申请管理</li>
                        <li class="breadcrumb-item active">编辑实验室申请</li>
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
                        <h3 class="widget-title">实验室申请信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa jiaoshi">
                                        <label>教师</label>
                                        <div>
                                            <select style="width: 450px" id="jiaoshiSelect" name="jiaoshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 jiaoshi">
                                        <label>工号</label>
                                        <input style="width: 450px" id="jiaoshiUuidNumber" name="jiaoshiUuidNumber" class="form-control"
                                               placeholder="工号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 jiaoshi">
                                        <label>教师姓名</label>
                                        <input style="width: 450px" id="jiaoshiName" name="jiaoshiName" class="form-control"
                                               placeholder="教师姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 jiaoshi">
                                        <label>头像</label>
                                        <img id="jiaoshiPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 jiaoshi">
                                        <label>联系方式</label>
                                        <input style="width: 450px" id="jiaoshiPhone" name="jiaoshiPhone" class="form-control"
                                               placeholder="联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa shiyanshi">
                                        <label>实验室信息</label>
                                        <div>
                                            <select style="width: 450px" id="shiyanshiSelect" name="shiyanshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 shiyanshi">
                                        <label>实验室名称</label>
                                        <input style="width: 450px" id="shiyanshiName" name="shiyanshiName" class="form-control"
                                               placeholder="实验室名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shiyanshi">
                                        <label>实验室图片</label>
                                        <img id="shiyanshiPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 shiyanshi">
                                        <label>实验室类型</label>
                                        <input style="width: 450px" id="shiyanshiValue" name="shiyanshiValue" class="form-control"
                                               placeholder="实验室类型" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="shiyanshiId" name="shiyanshiId" type="hidden">
                                <input id="jiaoshiId" name="jiaoshiId" type="hidden">
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
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
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "shiyanshishenqing";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var shiyanshishenqingYesnoTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var jiaoshiOptions = [];
    var shiyanshiOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '实验室信息'){//当前登录用户不为这个
                if($("#shiyanshiId") !=null){
                    var shiyanshiId = $("#shiyanshiId").val();
                    if(shiyanshiId == null || shiyanshiId =='' || shiyanshiId == 'null'){
                        alert("实验室不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '教师'){//当前登录用户不为这个
                if($("#jiaoshiId") !=null){
                    var jiaoshiId = $("#jiaoshiId").val();
                    if(jiaoshiId == null || jiaoshiId =='' || jiaoshiId == 'null'){
                        alert("教师不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("shiyanshishenqing/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addshiyanshishenqing');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function shiyanshishenqingYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shiyanshishenqing_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shiyanshishenqingYesnoTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function jiaoshiSelect() {
            //填充下拉框选项
            http("jiaoshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    jiaoshiOptions = res.data.list;
                }
            });
        }

        function jiaoshiSelectOne(id) {
            http("jiaoshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                jiaoshiShowImg();
                jiaoshiShowVideo();
                jiaoshiDataBind();
            }
        });
        }
        function shiyanshiSelect() {
            //填充下拉框选项
            http("shiyanshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    shiyanshiOptions = res.data.list;
                }
            });
        }

        function shiyanshiSelectOne(id) {
            http("shiyanshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                shiyanshiShowImg();
                shiyanshiShowVideo();
                shiyanshiDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationShiyanshishenqingyesnotypesSelect(){
            var shiyanshishenqingYesnoTypesSelect = document.getElementById('shiyanshishenqingYesnoTypesSelect');
            if(shiyanshishenqingYesnoTypesSelect != null && shiyanshishenqingYesnoTypesOptions != null  && shiyanshishenqingYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < shiyanshishenqingYesnoTypesOptions.length; i++) {
                    shiyanshishenqingYesnoTypesSelect.add(new Option(shiyanshishenqingYesnoTypesOptions[i].indexName,shiyanshishenqingYesnoTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationjiaoshiSelect() {
            var jiaoshiSelect = document.getElementById('jiaoshiSelect');
            if(jiaoshiSelect != null && jiaoshiOptions != null  && jiaoshiOptions.length > 0 ) {
                for (var i = 0; i < jiaoshiOptions.length; i++) {
                        jiaoshiSelect.add(new Option(jiaoshiOptions[i].jiaoshiName, jiaoshiOptions[i].id));
                }

                $("#jiaoshiSelect").change(function(e) {
                        jiaoshiSelectOne(e.target.value);
                });
            }

        }

        function initializationshiyanshiSelect() {
            var shiyanshiSelect = document.getElementById('shiyanshiSelect');
            if(shiyanshiSelect != null && shiyanshiOptions != null  && shiyanshiOptions.length > 0 ) {
                for (var i = 0; i < shiyanshiOptions.length; i++) {
                        shiyanshiSelect.add(new Option(shiyanshiOptions[i].shiyanshiName, shiyanshiOptions[i].id));
                }

                $("#shiyanshiSelect").change(function(e) {
                        shiyanshiSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var shiyanshishenqingYesnoTypesSelect = document.getElementById("shiyanshishenqingYesnoTypesSelect");
        if(shiyanshishenqingYesnoTypesSelect != null && shiyanshishenqingYesnoTypesOptions != null  && shiyanshishenqingYesnoTypesOptions.length > 0 ) {
            for (var i = 0; i < shiyanshishenqingYesnoTypesOptions.length; i++) {
                if (shiyanshishenqingYesnoTypesOptions[i].codeIndex == ruleForm.shiyanshishenqingYesnoTypes) {//下拉框value对比,如果一致就赋值汉字
                        shiyanshishenqingYesnoTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var jiaoshiSelect = document.getElementById("jiaoshiSelect");
            if(jiaoshiSelect != null && jiaoshiOptions != null  && jiaoshiOptions.length > 0 ) {
                for (var i = 0; i < jiaoshiOptions.length; i++) {
                    if (jiaoshiOptions[i].id == ruleForm.jiaoshiId) {//下拉框value对比,如果一致就赋值汉字
                        jiaoshiSelect.options[i+1].selected = true;
                        $("#jiaoshiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var shiyanshiSelect = document.getElementById("shiyanshiSelect");
            if(shiyanshiSelect != null && shiyanshiOptions != null  && shiyanshiOptions.length > 0 ) {
                for (var i = 0; i < shiyanshiOptions.length; i++) {
                    if (shiyanshiOptions[i].id == ruleForm.shiyanshiId) {//下拉框value对比,如果一致就赋值汉字
                        shiyanshiSelect.options[i+1].selected = true;
                        $("#shiyanshiSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addshiyanshishenqing');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                shiyanshiId: "required",
                jiaoshiId: "required",
                shiyanshishenqingYesnoTypes: "required",
                shiyanshishenqingYesnoText: "required",
            },
            messages: {
                shiyanshiId: "实验室不能为空",
                jiaoshiId: "教师不能为空",
                shiyanshishenqingYesnoTypes: "审核结果不能为空",
                shiyanshishenqingYesnoText: "审核原因不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addshiyanshishenqing = window.sessionStorage.getItem("addshiyanshishenqing");
        if (addshiyanshishenqing != null && addshiyanshishenqing != "" && addshiyanshishenqing != "null") {
            //注册表单验证
            $(validform());
                $(".shiyanshishenqingYesnoTypesDiv").remove();
                $(".shiyanshishenqingYesnoTextDiv").remove();

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("shiyanshishenqing/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        jiaoshiDataBind();
        shiyanshiDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#shiyanshiId").val(ruleForm.shiyanshiId);
        $("#jiaoshiId").val(ruleForm.jiaoshiId);
        $("#shiyanshishenqingYesnoText").val(ruleForm.shiyanshishenqingYesnoText);

    }
    <!--  级联表的数据回显  -->
    function jiaoshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#jiaoshiId").val(ruleForm.id);

        $("#jiaoshiUuidNumber").val(ruleForm.jiaoshiUuidNumber);
        $("#jiaoshiName").val(ruleForm.jiaoshiName);
        $("#jiaoshiPhone").val(ruleForm.jiaoshiPhone);
        $("#jiaoshiEmail").val(ruleForm.jiaoshiEmail);
    }

    function shiyanshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#shiyanshiId").val(ruleForm.id);

        $("#shiyanshiName").val(ruleForm.shiyanshiName);
        $("#shiyanshiValue").val(ruleForm.shiyanshiValue);
        $("#statusValue").val(ruleForm.statusValue);
        $("#shiyanshiContent").val(ruleForm.shiyanshiContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        jiaoshiShowImg();
        shiyanshiShowImg();
    }


    <!--  级联表的图片  -->

    function jiaoshiShowImg() {
        $("#jiaoshiPhotoImg").attr("src",ruleForm.jiaoshiPhoto);
    }


    function shiyanshiShowImg() {
        $("#shiyanshiPhotoImg").attr("src",ruleForm.shiyanshiPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        jiaoshiShowVideo();
        shiyanshiShowVideo();
    }


    <!--  级联表的视频  -->

    function jiaoshiShowVideo() {
        $("#jiaoshiPhotoV").attr("src",ruleForm.jiaoshiPhoto);
    }

    function shiyanshiShowVideo() {
        $("#shiyanshiPhotoV").attr("src",ruleForm.shiyanshiPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            shiyanshishenqingYesnoTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            jiaoshiSelect();
            shiyanshiSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationShiyanshishenqingyesnotypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationjiaoshiSelect();
            initializationshiyanshiSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addshiyanshishenqing');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '学生') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '教师') {
            // $(".aaaaaa").remove();
            $(".jiaoshi").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
