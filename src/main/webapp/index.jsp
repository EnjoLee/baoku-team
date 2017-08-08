<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% request.setAttribute("ctx", request.getContextPath()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宝库欢迎你</title>
<style>
	body{padding:0; font-size:18px;margin:0;}
	html,body,table,td,button{font-size:18px;font-family:"Microsoft YaHei"; color:#1575ed;}
	#img img{width:190px;height:157px;}
  table input[type="text"]{width:171px;height:30px;border:1px solid #e2e2e2;padding:0 5px;outline:none;}
  .form-btn{margin:210px 0 100px 0;text-align: center;}
  .form-btn button{font-size:16px;cursor:pointer;border:0;width:112px;height:43px;line-height: 43px;text-align: center;color:#fff;}
  .save{background:#fd9500;margin-right:39px;}
  .cancel{background: #bac3cf;}
</style>
<script src="${ctx}/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
function upload(){
	document.getElementById("frm").submit;
}
</script>

</head>

<body style="font-size:18px;font-family:Microsoft YaHei; color:#1575ed;">
  <form id="frm" name="frm" action="${ctx}/baokuTeam/toAdd.do" method="post" enctype="multipart/form-data">
  <div style="width:1200px;margin:0 auto;">
    <div>
       <img src="${ctx}/resources/images/baokuteam.jpg" width="1200" height="362" />
     </div>
     <div style="overflow:hidden;">
       <textarea style="width:1174px;resize:none;min-height:100px;height:80px;outline:none;margin-top:20px;font-size:16px;border:1px solid #dadada;color:#1575ed;padding:10px;" placeholder="描述"></textarea>
       <div>
           <table width="550" border="0" cellspacing="0" cellpadding="0" style="color:#1575ed;background:url(http://file.baoku.com/employee/list_bg.jpg) no-repeat right bottom #f7f8fa;margin:60px 0 0 60px; overflow:hidden;float:left;">
              <tr>
                  <td width="250" height="217" rowspan="5" align="center" valign="middle" id="img" style="position:relative;">
                  <input type="file" name="file" id="file1" style="opacity:0;width:190px;height:157px;position:absolute;left:22px;top:31px;z-index:2" />
                  <span style="display:block;width:190px;height:157px;background:url(http://file.baoku.com/employee/icon_upload.jpg) no-repeat;position:absolute;left:22px;top:31px;"></span>
                  </td>
                  <td width="300" height="60" valign="bottom">姓名：<input type="text" id="userName" name="userName"></td>
              </tr>
              <tr>
                  <td height="50">性别：<input type="text" id="sex" name="sex"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">部门：<input type="text" id="buMen" name="buMen"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">职位：<input type="text" id="zhiWei" name="zhiWei"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">直属负责人：<input type="text" id="fuZeRen" name="fuZeRen"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">email：<input type="text" id="email" name="email"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">原工作单位名称：<input type="text" id="oldCompany" name="oldCompany"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">原工作职位：<input type="text" id="oldZhiWei" name="oldZhiWei"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">负责宝库什么方面的工作：<input type="text" id="doWhat" name="doWhat"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">毕业学校：<input type="text" id="school" name="school"></td>
              </tr>
              <tr>
                  <td height="40" valign="top">专业：<input type="text" id="zhuanYe" name="zhuanYe"></td>
              </tr>
          </table>
       </div>
      <!--  <a href="javascript:;" onClick="addMore(this);" style="float:left;margin: 60px 0 0 60px;display:block;border:1px dashed #e2e2e2;color:#bac3cf;text-align:center;font-size:50px;width:486px;height:210px;background:#f6f9fc url(http://file.baoku.com/employee/icon_add.png) no-repeat center;"></a> -->
     </div>
     <div class="form-btn">
       <button onclick="upload();" class="save" >确定</button>
       <button type="button" class="cancel">取消</button>
     </div>
  </div>
  </form>
<script>
  function addMore(obj){
      var $self = $(obj);
      var html = '<table width="496" border="0" cellspacing="0" cellpadding="0" style="background:url(http://file.baoku.com/employee/list_bg.jpg) no-repeat right bottom #f7f8fa;margin:60px 0 0 60px; overflow:hidden;float:left;"><tr><td width="235" height="217" rowspan="4" align="center" valign="middle" id="img" style="position:relative;"><input type="file" style="opacity:0;width:190px;height:157px;position:absolute;left:22px;top:31px;z-index:2"><span style="display:block;width:190px;height:157px;background:url(http://file.baoku.com/employee/icon_upload.jpg) no-repeat;position:absolute;left:22px;top:31px;"></span></td><td width="261" height="60" valign="bottom">姓名：<input type="text"></td></tr><tr><td height="50">性别：<input type="text"></td></tr><tr><td height="40" valign="top">部门：<input type="text"></td></tr><tr><td height="67" valign="top">职位：<input type="text"></td></tr></table>'
      $self.prev().append(html);
  }
</script>
</body>
</html>
