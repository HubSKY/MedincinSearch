<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about-us.aspx.cs" Inherits="MedicineSearch.about_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
<link href="css/Search2.css" rel="stylesheet" type="text/css" />
<link href="css/about-us.css" rel="stylesheet" type="text/css"/>

<script language="javascript" type="text/javascript">
    function clearText(field) {

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
            <ul>
                <li><a href="index.aspx">首页  </a></li>
                <li><a href="onlineTest.aspx">测试</a></li>
                <li><a href="download.aspx">课件</a></li>
                <li><a href="discuss.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
                 <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
        </div> <!-- end of menu -->
        
        <div id="search_section">
           <form id="form1" runat="server">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="149px"></asp:TextBox>  
                <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" Width="63px" />
           </form>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
    
    
    
<div id="about_us_hd" class="header">

<div id="Div1" class="spam">
<!--关于我们模块-->
<div id="about_us">

<p class="txt"><h2>关于我们</h2></p>
<p id="text-indent" class="txt"><strong>中医药教学平台</strong>的宗旨是方便网友们能够找到自己需要的药材知识。</p>

<p id="P1" class="txt">我们打破了传统的教学模式，摆脱了教室的束缚。随时随地，只要您可以上网，您就可以用我们的网站学习自己想要的药材。</p>

<p id="P2" class="txt">
  <p class="txt">此系统主要有四个模块，分别为：</p>
  <ol  class="txt">
  <li>在线测试。主要用于对已经注册的网友进行一些简单的测试，以检查自己掌握的中药知识。</li>
  <li>课件下载。提供给已注册的网友将自己喜欢的课件下载下来，以便没有网络连接时观看。</li>
  <li>讨论互动。提供给以注册的网友将自己的疑问提出来，等待老师或者其他了解这一问题的用户回答。同时也可以回答其他用户提出的问题。</li>
  <li>搜索。对于没有注册的网友，我们提供搜索功能，通过此功能可以搜索自己感兴趣的药材，查看其属性。</li>
  </ol>
</p>
</div>
</div>
<div id="feedback" class="feedback">
<p id="P3" class="feedback">您有任何问题都可以给我们留言，我们会尽快为您处理。</p>
<p id="P4" class="txt">
   <textarea cols="50" rows="5" ></textarea>
    <input type="submit" name="feedback" value="留言" alt="Search" />
</p>
 </div>
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
</body>
</html>
