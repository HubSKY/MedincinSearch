<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="expriment.aspx.cs" Inherits="MedicineSearch.expriment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>medicinSearch</title>
<link href="css/medincin_search_style.css" rel="stylesheet" type="text/css" />
<link href="css/serachPage.css" rel="stylesheet" type="text/css" />
	<script src="gallery/js/jquery.js" type="text/javascript"></script>
    <script src="gallery/js/swfobject.js" type="text/javascript"></script>
    <script src="gallery/js/flashgallery.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        function clearText(field){

            if (field.defaultValue == field.value) field.value = '';
            else if (field.value == '') field.value = field.defaultValue;

        }
    
    </script>
</head>
<body>
    <div id="medicin_search_container">
    <div id="medicin_search_banner"> 
        <asp:Label ID="lablenickname" runat="server"></asp:Label>
    </div>
     <div id="medicin_search_menu_search">
        <div id="medicin_search_menu">
            <ul >
               <li><a href="index.aspx">首页  </a></li>
                <li><a href="onlineTest.aspx">测试</a></li>
                <li><a href="download.aspx">课件</a></li>
                <li><a href="discuss.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
                 <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
         </div> 
        
        <div id="search_section">
            <form id="form1" runat="server">
                <asp:TextBox ID="searchText" runat="server" style="margin-left: 0px" Width="160px"></asp:TextBox>
                <asp:Button ID="searchButton" runat="server" Text="搜索" OnClick="searchButton_Click" Width="63px" />
            </form>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
    <div style="padding-top:20px">&nbsp;</div>
   <div id="medicin_search_content">

     <div id="gallary" >
		 <script type="text/javascript">
		     jQuery.flashgallery('gallery/3DWallGallery.swf ', 'gallery/gallery.xml', { width: '800px', height: '600px', background: 'transparent' });
       		 </script>
     </div>
        <div id="medcine_footer">
        <ul class="footer_list">
            <li><a href="#" class="current">hongwei</a></li>
            <li><a href="#">gongguiwei</a></li>
            <li><a href="#">wuhengjin</a></li>
            <li><a href="#">zhouqiong</a></li>
            <li class="last"><a href="#">yamgshuyuan</a></li>
        </ul> 
</div>
  </div>
        </div>
</body>
</html>
