<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="MedicineSearch.download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search</title>
<link href="css/Search2.css" rel="stylesheet" type="text/css" />
<link href="css/ziliao.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">

    function bofang(num) {
        var str1 = '<embed id="mp1" type="application/x-mplayer2" src="';
        var str2 = '';
        var str3 = '" name="MediaPlayer"  showstatusbar="1" showdisplay="1" showcontrols="1" loop="0" videoborder3d="0" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" width="600" height="500"></embed>';
        switch (num) {
            case 1:
                {
                    str2 = 'E:/课程/软件工程与计算/教学平台/中药搜索主页/中药搜索主页/video/[Java4Android]01_Java考古学.mp4';
                } break;
            case 2:
                {
                    str2 = 'E:/课程/软件工程与计算/教学平台/中药搜索主页/中药搜索主页/video/[Java4Android]02_Java创世纪.mp4';
                } break;
            case 3:
                {
                    str2 = 'E:/课程/软件工程与计算/教学平台/中药搜索主页/中药搜索主页/video/[Java4Android]03_Java基本概念（一）.mp4';
                } break;
            case 4:
                {
                    str2 = 'E:/课程/软件工程与计算/教学平台/中药搜索主页/中药搜索主页/video/[Java4Android]02_Java创世纪.mp4';
                } break;
            case 5:
                {
                    str2 = 'E:/uml/[红旅首发www.hltm.cc][东京暗鸦][03].mp4';
                } break;
        }


        document.getElementById('vsname').src = str2;
        document.getElementById("embedbox").innerHTML = str1 + str2 + str3;
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
            <form action="#" method="get" runat="server">
               <asp:TextBox ID="TextBox1" runat="server" Width="141px"></asp:TextBox>
            <asp:Button ID="searchText" runat="server" Text="搜索" OnClick="Button2_Click" Width="60px" /> 
            </form>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
  
<div id="ziliao_show"  class="ziliao_show">
      
	   <table width="123" >
	  		<tr class="ziliao_show" >
       	<td width="115" height="26" class="text_indent_2" >资料目录</td></tr>
      </table>
  <div>
  <table class="table1" height="309" >
     		<tr class="ziliao_show"><td height="53" class="text_indent_1"><a onclick="window.location.href='C:/Users/122/Desktop/2011级软工专业《软件开发技术》期末考查.doc'" hover="value:">课件1</a></td></tr>
      		<tr class="ziliao_show"><td height="53"class="text_indent_1"><a onclick="window.location.href='C:/Users/122/Desktop/2011级软工专业《软件开发技术》期末考查.doc'">课件2</a></td></tr>
      		<tr class="ziliao_show"><td height="53"class="text_indent_1"><a onclick="window.location.href='C:/Users/122/Desktop/2011级软工专业《软件开发技术》期末考查.doc'">课件3</a></td></tr>
      		<tr class="ziliao_show"><td height="53" class="text_indent_1"><a onclick="window.location.href='C:/Users/122/Desktop/2011级软工专业《软件开发技术》期末考查.doc'">课件4</a></td></tr>
      		<tr class="ziliao_show"><td height="53" class="text_indent_1"><a onclick="window.location.href='C:/Users/122/Desktop/2011级软工专业《软件开发技术》期末考查.doc'">课件5</a></td></tr>
	</table>

  </div>

<object id="video_show" classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" width="`150" height="300" standby="Loading Windows Media Player components…" type="application/x-oleobject" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,7,1112">
      <param id="vsname" name="FileName" value="video/xsl_hd.mp4">
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

      
  <div id="shipin_nuem">
   <table width="123" >
	  		<tr class="ziliao_show" ><td width="115" height="26" class="text_indent_2" >视频目录</td></tr>
  </table>
  
  <div>
  <table width="163" class="table1" id="shipin" >
     		<tr class="ziliao_show"><td height="56"class="text_indent_1"><a id="kejian1"onclick=" bofang(1) ">课件1</a></td></tr>
      		<tr class="ziliao_show"><td height="56"class="text_indent_1"><a id="kejian2"onclick=" bofang(2)">课件2</a></td></tr>
      		<tr class="ziliao_show"><td height="56"class="text_indent_1"><a id="kejian3"onclick=" bofang(3)">课件3</a></td></tr>
      		<tr class="ziliao_show"><td height="59"class="text_indent_1"><a id="kejian4"onclick=" bofang(4)">课件4</a></td></tr>
      		<tr class="ziliao_show"><td height="52"class="text_indent_1"><a id="kejian5" onclick=" bofang(5)">课件5</a></td></tr>
	</table>
</div>
</div>



<div id="upload">
  <table  id="table_upload" width="500" high="300" >
  <tr><td><P>我要上传:</p></td>
   <td><p>
   <form action="a.aspx" method="post" enctype="multipart/form-data">
    <input type="file" />
    <input type="submit" value="upload" />
    </form>
    </p></td></tr>
   </table>
</div>
    </div>


</div>

</body>
</html>
