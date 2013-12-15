<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="playVedio.aspx.cs" Inherits="wangyesehji.playVedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/Search2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #video_show {
            width: 831px;
            height: 524px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">

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
               <asp:TextBox ID="TextBox1" runat="server" Width="141px"></asp:TextBox>
            <asp:Button ID="searchText" runat="server" Text="搜索" OnClick="Button2_Click" Width="60px" /> 
        </div> 
        
        <div class="cleaner"></div>	
	</div>
       <div id="medicin_search_content">
           <div style="height: 60px ; margin-top:40px; float:left; width: 957px; background: url(../images/adminHead.jpg);">     
           </div>
           <div style="float:left; width: 957px;margin-top:20px; height: 361px;" >
               <div style="margin-left:40px; text-align:center"> 
                  <object id="video_show" classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" standby="Loading Windows Media Player components…" type="application/x-oleobject" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,7,1112">
      <param id="vsname" name="FileName" value="">
      <param name="AutoStart" value="false">
      <param name="ShowControls" value="true">
      <param name="BufferingTime" value="2">
      <param name="ShowStatusBar" value="true">
      <param name="AutoSize" value="true">
      <param name="InvokeURLs" value="false">
      <param name="AnimationatStart" value="1">
      <param name="TransparentatStart" value="1">
      <param name="Loop" value="1">
      <div id="embedbox">
      <embed id="mp1" type="application/x-mplayer2" src="C:/Users/122/Desktop/工作与生活/html/video/xsl_hd11.mp4" name="MediaPlayer" autostart="1" showstatusbar="1" showdisplay="1" showcontrols="1" loop="0" videoborder3d="0" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" width="600" height="500"></embed>
		</div>
</object>
                
               </div>
           </div>
       </div>
        
       <div id="medcine_footer">
        <ul class="footer_list">
        <ul class="footer_list">
            <li><a href="index.html" class="current">hongwei</a></li>
            <li><a href="#">wuhengjin</a></li>
            <li><a href="#">gongguiwei</a></li>
            <li><a href="#">yangshuyuan</a></li>
            <li class="last"><a href="#"> zhouqiong</a></li>
        </ul> 
</div>
  </div>

    </form>
</body>
</html>
