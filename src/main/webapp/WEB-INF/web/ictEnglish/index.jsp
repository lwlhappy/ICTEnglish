<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../../public/tag.jsp"%>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<!-- load css -->
<link rel="stylesheet" type="text/css"
    href="${baseurl}/public/common/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css"
    href="${baseurl}/public/css/index.css" media="all">
</head>

<body>
<div class="all">
    <div id="b1">
        <image src="${baseurl}/img/ict.png" id="b3"></image>
        <p id="b2">在线生成试卷系统</p>

        </p>
    </div>
    <!--         <p id="a1" onclick="goDataBasePage()" onMouseOver=this.style.color="#C1C1C1" onMouseOut=this.style.color="black"  >题库管理
            </p> -->
    <div>

        <image src="${baseurl}/public/images/bj11.jpg" id="bground"></image>

        <div class="z1"> <p class="text">一款强大的在线生成试卷系统</p>
            <div ><button class="a2" onclick="goAddByHand()" onMouseOver=this.style.color="#f6f9e5" onMouseOut=this.style.color="black"  >手动选题</button></div>
            <div ><button class="a3" onclick="goDataBasePage()" onMouseOver=this.style.color="#F6F9E5" onMouseOut=this.style.color="black"  >题库管理</button></div>
            <div ><button class="a5" onclick="goPaperList()" onMouseOver=this.style.color="#f6f9e5" onMouseOut=this.style.color="black"  >试卷管理</button></div>
        </div>
    </div>
</div>

    <script type="text/javascript" src="${baseurl}/public/common/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="${baseurl}/public/common/jsplugin/jparticle.jquery.js"></script>

    <script type="text/javascript">
    function goAddByHand() {
    	window.location.href = "${baseurl}/ictEnglish/manualPaper";
    }
    
    function goPaperList() {
        $.ajax({
            type: 'POST',
            url: "${baseurl}/ictEnglish/paper/getPaperList",
            success: function ( ) {
                window.location.href = "${baseurl}/ictEnglish/paperList";
            }
        });
    }
    
    
    function goDataBasePage() {
    	window.location.href = "${baseurl}/ictEnglish/dbPage";
    }
    </script>
</body>

</html>