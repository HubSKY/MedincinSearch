<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailPage.aspx.cs" Inherits="MedicineSearch.detailPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
<link href="css/detailPage.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            height: 15px;
        }
    </style>
</head>
<body>
    <form id="medicin_search_container"  runat="server">
	
    <div id="medicin_search_banner">
        
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
           <div id="form1" >
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>  
                <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" />
            </div>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
     <div style="padding-top:20px">&nbsp;</div>
    <div id="medicin_search_content">
        <table border="0" style="width:100% ;height:300px;font-size:14px">
            <tr>
                <td style="height:16px">
                   
                </td>
            </tr>
            <tr>
                <td style="height:215px">
                    <table border="0" style="width:100%; height:300px;">
                        <tr>
                            <td style="width:230px;height:15px">
                                <asp:Image ID="Image1"  runat="server"/>
                            </td>
                            <td style="height:15px">
                                <table style="width:100%" border="0">
                                    <tr>
                                        <td style="text-align:left;height:30px;">
                                            药材名称：<asp:Label ID="lableName" runat="server" Text="lable1"></asp:Label>
                                        </td>
                                        <tr>
                                            <td style="text-align:left;height:30px;">
                                                所属科目：<asp:Label ID="lableCatagory" runat="server" Text="lable2"></asp:Label>
                                            </td>
                                                
                                        </tr>
                                         <tr>
                                            <td style="text-align:left;height:30px;">
                                                味道：<asp:Label ID="lableTast" runat="server" Text="lable3"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:left;height:30px;">
                                                功效：<asp:Label ID="lableFunction" runat="server" Text="lable4"></asp:Label>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td style="text-align:left;height:30px;">
                                                详细介绍：<asp:Label ID="lableDetailIntro" runat="server" Text="lable5"></asp:Label>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td style="text-align:right;height:30px;">
                                               
                                                <asp:ImageButton ID="ImageButton1"  ImageUrl="../images/collection.png" runat="server" Height="28px" Width="66px" OnClick="ImageButton1_Click" />
                                               
                                            </td>
                                        </tr>
                                    </tr>
                                </table>

                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
       <div id="medcine_footer">
        <ul class="footer_list">
            <li><a href="index.html" class="current">首页</a></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="#">Projects</a></li>
            <li><a href="#">Gallery</a></li>
            <li class="last"><a href="#">Contact Us</a></li>
        </ul> 
</div>
    
    
    

 
</form>
</body>
</html>
