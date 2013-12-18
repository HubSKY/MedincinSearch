<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MYmessage.aspx.cs" Inherits="MedicineSearch.MYmessage" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>讨论回复</title>
    <link href="css/Search.css" rel="stylesheet" type="text/css" />
    <link href="css/message.css" rel="stylesheet" type="text/css" />
</head>
<body>
      <form id="medicin_search_container"  runat="server">
	
    <div id="medicin_search_banner">

        <asp:Label ID="lablenickname" runat="server"></asp:Label>
    </div>
    
    <div id="medicin_search_menu_search">
        <div id="medicin_search_menu">
            <ul>
               <li><a href="index.aspx">首页  </a></li>
                <li><a href="onlineTest.aspx">测试</a></li>
                <li><a href="download.aspx">课件</a></li>
                <li><a href="MYmessage.aspx">讨论</a></li>
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
          <div>
        <div id="main">
            <asp:Repeater runat="server" ID="rptMessage" OnItemDataBound="rptMessage_ItemDataBound">
                <ItemTemplate>
                    <div class="message ">
                        <div class="message-info"> <span class="message-time">
                                <%#Eval("postime","{0:F}") %></span>

                            <span class="float-right">#<%#Eval("ID") %>[<a href="disscussreply.aspx?mid=<%#Eval("ID") %>">回复留言</a>]</span>
                           
                        </div>
                        <div class="message-userinfo">
                            昵称：<%#Eval("Unickname")%><br />
                            注册账号：<%#Eval("registernumber")%><br />
                            性别：<%# Eval("Usex").ToString()%><br />
                            ＱＱ：<%#Eval("Uqq").ToString() == "" ? "保密" : Eval("Uqq").ToString()%><br />
                            Email：<%#Eval("Uemail").ToString()==""?"保密":Eval("Uemail").ToString()%><br />
                            <%--昵称：<%="Unickname"%><br />
            注册账号：<%="registernumber"%><br />
            性别：<%="Usex"%><br />
          
            ＱＱ：<%=Uqq%><br />
            Email：<%=Uemail%><br />--%>
                        </div>
                        <div class="message-content">
                            留言内容：<hr />
                            <%#Eval("content")%>
                            <br />
                            <br />
                            <%--该留言对应的回复--%>
                            <asp:Repeater ID="rptdisscussreply" runat="server">
                                <ItemTemplate>
                                    <div class="<%#(bool)Eval("isadmin")?"message-admin-replay":"message-user-replay" %>">
                                        <div class="message-replay-time">
                                            <%#(bool)Eval("isadmin")?"管理员":"" %>【<%#Eval("Unickname")%>】于【
                                            <%#Eval("replytime", "{0:F}")%>】回复：</div>
                                        <hr />
                                        <%#Eval("content")%>
                                    </div>
                                    <br />
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div style="clear: both;">
                        </div>
                    </div>
                    <div style="clear: both;">
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="pager">
                <webdiyer:AspNetPager UrlPaging="true" AlwaysShow="true" ShowFirstLast="false" ShowPrevNext="false"
                    NumericButtonCount="5" ShowCustomInfoSection="Right" ShowNavigationToolTip="true"
                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" CustomInfoHTML="%RecordCount% | %CurrentPageIndex%/%PageCount%页"
                    CustomInfoSectionWidth="80px" ID="AspNetPager1" runat="server">
                </webdiyer:AspNetPager>
            </div>
        </div>
        <!--侧边-->
        <div id="sidebar">
            <div class="sidebar-border sidebar-class">
                <h2>
                    欢迎进入中医药搜索学习交流小天地，亲爱的，您可以在这里留下您宝贵的意见哦！ (*^__^*)(*^__^*)(*^__^*)</h2>
               <div id="sidebar-message-publish" class="sidebar-border sidebar-class">
                   
                        
                    <div class="fb">
                    
                        <a href="discussPublish.aspx">发布留言</a>
                    </div>
                </div>
  



                <ul>
                    <li><a href="#">
                        <img src="images/木瓜海棠.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/仙茅.jpg" /></a></li>
                  
                    <li><a href="#">
                        <img src="images/连翘%20-%20副本.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/木瓜海棠.jpg" /></a></li>
                 
                    
                </ul>
            </div>
        
 
    <div style="clear: both;">
    </div>
</div>
          

    <!--页脚-->
    <div id="footer">
        <p>
            Useright © 2013 - 2015 All Rights Reserved</p>
        <p>
            【周琼】 版权所有</p>
    </div>
    </form>
</body>
</html>
