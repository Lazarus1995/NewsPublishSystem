<%@ page language="java" import="java.util.*" pageEncoding="gbk" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>��ʾ������Ϣ</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            font-size: 12px
        }

        .STYLE3 {
            font-size: 12px;
            font-weight: bold;
        }

        .STYLE4 {
            color: #03515d;
            font-size: 12px;
        }

        a {
            text-decoration: none;
            color: red;
        }

        a:HOVER {
            color: black;
            text-decoration: none;
        }

        td {
            font-size: 12px;
            line-height: 30px;
        }

        -->
    </style>

    <script>
        var highLightColor = '#c1ebff';
        // �˴�clickColorֻ����winϵͳ��ɫ������ܳɹ�,�����#xxxxxx�Ĵ���Ͳ���,��û�����Ϊʲô:(
        var clickColor = '#51b2f6';
        function changeTo() {
            source = event.srcElement;
            if (source.tagName == "TR" || source.tagName == "TABLE")
                return;
            while (source.tagName != "TD")
                source = source.parentElement;
            source = source.parentElement;
            cs = source.children;
            // alert(cs.length);
            if (cs[1].style.backgroundColor != highLightColor && source.id != "nc" && cs[1].style.backgroundColor != clickColor)
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = highLightColor;
                }
        }

        function changeBack() {
            if (event.fromElement.contains(event.toElement) || source.contains(event.toElement) || source.id == "nc")
                return
            if (event.toElement != source && cs[1].style.backgroundColor != clickColor)
                // source.style.backgroundColor = originalcolor;
            for (i = 0; i < cs.length; i++) {
                cs[i].style.backgroundColor = "";
            }
        }

        function clickTo() {
            source = event.srcElement;
            if (source.tagName == "TR" || source.tagName == "TABLE")
                return;
            while (source.tagName != "TD")
                source = source.parentElement;
            source = source.parentElement;
            cs = source.children;
            // alert(cs.length);
            if (cs[1].style.backgroundColor != clickColor && source.id != "nc")
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = clickColor;
                }
            else
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = "";
                }
        }
    </script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="30" background="images/tab_05.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30"/></td>
                    <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="46%" valign="middle">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="5%">
                                                <div align="center"><img src="images/tb.gif" width="16" height="16"/>
                                                </div>
                                            </td>
                                            <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[�û�����]-[��������]
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30"/></td>
    </tr>
</table>
</td>
</tr>
<tr>
    <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="8" background="images/tab_12.gif">&nbsp;</td>
                <td background="images/bg1.jpg" bgcolor="#FFFFFF" class="STYLE3" width="100%">
                    �˺ţ�<s:property value="#session.login.account"/>
                </td>
                <td width="8" background="images/tab_15.gif">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <table cellpadding="5" cellspacing="6" border="0" width="100%">
                        <tr>
                            <td align="right" width="50%">���룺</td>
                            <td><s:property value="#session.login.password"/></td>
                        </tr>
                        <tr>
                            <td align="right">������</td>
                            <td><s:property value="#session.login.name"/></td>
                        </tr>
                        <tr>
                            <td align="right">��¼������</td>
                            <td><s:property value="#session.login.number"/></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
</body>
</html>
