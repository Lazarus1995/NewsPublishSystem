<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>修改用户资料</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
a{
	text-decoration: none;
	color: red;
}
a:HOVER {
	color: black;
	text-decoration: none;
}
td{
	font-size: 12px;
	line-height: 30px;
}
-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../../images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../../images/tb.gif" width="16" height="16" /></div></td>
                <td width="100%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[用户管理]-[修改用户资料]</td>
              </tr>
            </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="../../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../../images/tab_12.gif">&nbsp;</td>
        <td background="../../images/bg1.jpg" bgcolor="#FFFFFF" class="STYLE3" width="100%">
			修改用户资料
        </td>
        
        <td width="8" background="../../images/tab_15.gif">&nbsp;</td>
      </tr>
      <tr>
      	<td colspan="3" align="center">
      		<s:form action="manager!updateManager.action" method="post" namespace="/">
      			<s:hidden name="manager.id" value="%{manager.id}"/>
      			<s:textfield name="manager.account" label="登录账户" value="%{manager.account}" />
      			<s:textfield name="manager.password" label="登录密码" value="%{manager.password}"/>
      			<s:textfield name="manager.name" label="真实姓名" value="%{manager.name}" />
      			<s:textfield name="manager.number" label="登录次数" value="%{manager.number}" readonly="true"/>
      			<s:submit value="确定更新"/>
      		</s:form>
      	
      	</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

