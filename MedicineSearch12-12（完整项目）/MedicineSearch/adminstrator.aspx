<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminstrator.aspx.cs" Inherits="MedicineSearch.adminstrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="admin_top.html" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  <frameset  rows="560,*" id="frame">
	  <frameset cols="200,*" id="frame">
	<frame src="left.html" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="right.html" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
      </frameset>
      <frameset cols="200,*" id="frame">
  <frame src="UntitledFrame-1"><frame src="UntitledFrame-2"></frameset>
            </frameset>
<noframes>
    </form>
</body>
</html>
