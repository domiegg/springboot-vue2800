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
                    <h3 class="block-title">编辑排课取消申请</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">排课取消申请管理</li>
                        <li class="breadcrumb-item active">编辑排课取消申请</li>
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
                        <h3 class="widget-title">排课取消申请信息</h3>
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
                                    <div class="form-group col-md-6 aaaaaa kecheng">
                                        <label>课程信息</label>
                                        <div>
                                            <select style="width: 450px" id="kechengSelect" name="kechengSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 kecheng">
                                        <label>课程名称</label>
                                        <input style="width: 450px" id="kechengName" name="kechengName" class="form-control"
                                               placeholder="课程名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kecheng">
                                        <label>课程图片</label>
                                        <img id="kechengPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 kecheng">
                                        <label>课程类型</label>
                                        <input style="width: 450px" id="kechengValue" name="kechengValue" class="form-control"
                                               placeholder="课程类型" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="jiaoshiId" name="jiaoshiId" type="hidden">
                                <input id="kechengId" name="kechengId" type="hidden">
                                    <div class="form-group  col-md-6 kechengContentDiv">
                                        <label>课程详情</label>
                                        <input id="kechengContentupload" name="file" type="file">
                                        <script id="kechengContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var kechengContentUe = UE.getEditor('kechengContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="kechengContent" id="kechengContent-input">
                                    </div>
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

    var tableName = "paiekequxiao";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var paiekequxiaoYesnoTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var jiaoshiOptions = [];
    var kechengOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#kechengContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('kechengContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '教师'){//当前登录用户不为这个
                if($("#jiaoshiId") !=null){
                    var jiaoshiId = $("#jiaoshiId").val();
                    if(jiaoshiId == null || jiaoshiId =='' || jiaoshiId == 'null'){
                        alert("教师不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '课程信息'){//当前登录用户不为这个
                if($("#kechengId") !=null){
                    var kechengId = $("#kechengId").val();
                    if(kechengId == null || kechengId =='' || kechengId == 'null'){
                        alert("课程不能为空");
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
            httpJson("paiekequxiao/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addpaiekequxiao');
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
        function paiekequxiaoYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=paiekequxiao_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    paiekequxiaoYesnoTypesOptions = res.data.list;
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
        function kechengSelect() {
            //填充下拉框选项
            http("kecheng/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    kechengOptions = res.data.list;
                }
            });
        }

        function kechengSelectOne(id) {
            http("kecheng/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                kechengShowImg();
                kechengShowVideo();
                kechengDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationPaiekequxiaoyesnotypesSelect(){
            var paiekequxiaoYesnoTypesSelect = document.getElementById('paiekequxiaoYesnoTypesSelect');
            if(paiekequxiaoYesnoTypesSelect != null && paiekequxiaoYesnoTypesOptions != null  && paiekequxiaoYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < paiekequxiaoYesnoTypesOptions.length; i++) {
                    paiekequxiaoYesnoTypesSelect.add(new Option(paiekequxiaoYesnoTypesOptions[i].indexName,paiekequxiaoYesnoTypesOptions[i].codeIndex));
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

        function initializationkechengSelect() {
            var kechengSelect = document.getElementById('kechengSelect');
            if(kechengSelect != null && kechengOptions != null  && kechengOptions.length > 0 ) {
                for (var i = 0; i < kechengOptions.length; i++) {
                        kechengSelect.add(new Option(kechengOptions[i].kechengName, kechengOptions[i].id));
                }

                $("#kechengSelect").change(function(e) {
                        kechengSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var paiekequxiaoYesnoTypesSelect = document.getElementById("paiekequxiaoYesnoTypesSelect");
        if(paiekequxiaoYesnoTypesSelect != null && paiekequxiaoYesnoTypesOptions != null  && paiekequxiaoYesnoTypesOptions.length > 0 ) {
            for (var i = 0; i < paiekequxiaoYesnoTypesOptions.length; i++) {
                if (paiekequxiaoYesnoTypesOptions[i].codeIndex == ruleForm.paiekequxiaoYesnoTypes) {//下拉框value对比,如果一致就赋值汉字
                        paiekequxiaoYesnoTypesSelect.options[i].selected = true;
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
            var kechengSelect = document.getElementById("kechengSelect");
            if(kechengSelect != null && kechengOptions != null  && kechengOptions.length > 0 ) {
                for (var i = 0; i < kechengOptions.length; i++) {
                    if (kechengOptions[i].id == ruleForm.kechengId) {//下拉框value对比,如果一致就赋值汉字
                        kechengSelect.options[i+1].selected = true;
                        $("#kechengSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.kechengContent != null && ruleForm.kechengContent != 'null' && ruleForm.kechengContent != '' && $("#kechengContentupload").length>0) {

            var kechengContentUeditor = UE.getEditor('kechengContentEditor');
            kechengContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.kechengContent != null){
                    mes = ''+ ruleForm.kechengContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                kechengContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#kechengContentupload").length>0) {
            var kechengContentEditor = UE.getEditor('kechengContentEditor');
            if (kechengContentEditor.hasContents()) {
                $('#kechengContent-input').attr('value', kechengContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addpaiekequxiao');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                jiaoshiId: "required",
                kechengId: "required",
                paiekequxiaoYesnoTypes: "required",
                paiekequxiaoYesnoText: "required",
                kechengContent: "required",
            },
            messages: {
                jiaoshiId: "教师不能为空",
                kechengId: "课程不能为空",
                paiekequxiaoYesnoTypes: "排课取消审核不能为空",
                paiekequxiaoYesnoText: "审核原因不能为空",
                kechengContent: "课程详情不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addpaiekequxiao = window.sessionStorage.getItem("addpaiekequxiao");
        if (addpaiekequxiao != null && addpaiekequxiao != "" && addpaiekequxiao != "null") {
            //注册表单验证
            $(validform());
                $(".paiekequxiaoYesnoTypesDiv").remove();
                $(".paiekequxiaoYesnoTextDiv").remove();

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
            http("paiekequxiao/info/" + updateId, "GET", {}, (res) => {
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
        kechengDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#jiaoshiId").val(ruleForm.jiaoshiId);
        $("#kechengId").val(ruleForm.kechengId);
        $("#paiekequxiaoYesnoText").val(ruleForm.paiekequxiaoYesnoText);
        $("#kechengContent").val(ruleForm.kechengContent);

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

    function kechengDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#kechengId").val(ruleForm.id);

        $("#shiyanshishenqingId").val(ruleForm.shiyanshishenqingId);
        $("#kechengName").val(ruleForm.kechengName);
        $("#shangkeTime").val(ruleForm.shangkeTime);
        $("#xiakeTime").val(ruleForm.xiakeTime);
        $("#kechengValue").val(ruleForm.kechengValue);
        $("#banjiValue").val(ruleForm.banjiValue);
        $("#xueqiValue").val(ruleForm.xueqiValue);
        $("#xingqiValue").val(ruleForm.xingqiValue);
        $("#jiekeValue").val(ruleForm.jiekeValue);
        $("#jiaoshiId").val(ruleForm.jiaoshiId);
        $("#kechengYesnoValue").val(ruleForm.kechengYesnoValue);
        $("#kechengYesnoText").val(ruleForm.kechengYesnoText);
        $("#kechengContent").val(ruleForm.kechengContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        jiaoshiShowImg();
        kechengShowImg();
    }


    <!--  级联表的图片  -->

    function jiaoshiShowImg() {
        $("#jiaoshiPhotoImg").attr("src",ruleForm.jiaoshiPhoto);
    }


    function kechengShowImg() {
        $("#kechengPhotoImg").attr("src",ruleForm.kechengPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        jiaoshiShowVideo();
        kechengShowVideo();
    }


    <!--  级联表的视频  -->

    function jiaoshiShowVideo() {
        $("#jiaoshiPhotoV").attr("src",ruleForm.jiaoshiPhoto);
    }

    function kechengShowVideo() {
        $("#kechengPhotoV").attr("src",ruleForm.kechengPhoto);
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
            paiekequxiaoYesnoTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            jiaoshiSelect();
            kechengSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationPaiekequxiaoyesnotypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationjiaoshiSelect();
            initializationkechengSelect();

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
        window.sessionStorage.removeItem('addpaiekequxiao');
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
