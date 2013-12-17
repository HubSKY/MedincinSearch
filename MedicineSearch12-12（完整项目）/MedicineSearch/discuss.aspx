<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="discuss.aspx.cs" Inherits="MedicineSearch.discuss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>讨论互动</title>
    <link href="css/Search1.css" rel="stylesheet" type="text/css" />
    <link href="css/message.css" rel="stylesheet" type="text/css" />
    

    </script>
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
            </div>
            <!-- end of menu -->
            <div id="search_section" >
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="searchText" runat="server" Text="搜索" OnClick="Button2_Click" /> 
            </div>
            <div class="cleaner">
            </div>
        </div>

    
        <div id="main" style="float">

            <div class="message">
                <div class="message-info">
                
                <span class="message-time" >2013/11/20/21:26</span>
                <span class="float-right">#10 [回复留言]</span>
                </div>


                <div class="message-userinfo">
                昵称：消失的地平线<br />
                QQ：保密<br />
                地址：<br />
                电话：保密<br />
                注册账号：00000<br />
                邮箱：保密<br />
                </div>
                

                <div class="message-content">
                留言内容：<hr />
                管理员可见
                <div class="message-admin-replay">
                <div class="message-replay-time">管理员【周琼】于【2013/11/20/23:00】回复：</div>
                <hr />
                xxxxxxxxxx,谢谢！
                </div>
                <div class="message-user-replay">
              <div  class="message-replay-time">【龚贵伟】于【2013/11/20/23:20】 回复：</div> 
               <hr />谢谢！( ^_^ )( ^_^ )
                </div>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div style="clear:both;"></div>
            <div class="message ">
                <div class="message-info">
                
                <span class="message-time" >2013/11/20/21:26</span>
                <span class="float-right">#10 [回复留言]</span>
                </div>


                 <div class="message-userinfo">
                昵称：消失的地平线<br />
                QQ：保密<br />
                地址：<br />
                电话：保密<br />
                注册账号：00000<br />
                邮箱：保密<br />

                </div>


                <div class="message-content">
                留言内容：<hr />
                管理员可见
                <div class="message-admin-replay">
                <div class="message-replay-time">管理员【周琼】于【2013/11/20/23:00】回复：</div>
                <hr />
                xxxxxxxxxx,谢谢！
                </div>
                <div class="message-user-replay">
              <div  class="message-replay-time">【龚贵伟】于【2013/11/20/23:20】 回复：</div> 
               <hr />谢谢！( ^_^ )( ^_^ )
                </div>
                </div>
                
                <div style="clear:both;"></div>
            </div>
            
            <div style="clear:both;"></div>
            <div class="message">
                <div class="message-info">
                
                <span class="message-time" >2013/11/20/21:26</span>
                <span class="float-right">#10 [回复留言]</span>
                </div>

 <div class="message-userinfo">
                昵称：消失的地平线<br />
                QQ：保密<br />
                地址：<br />
                电话：保密<br />
                注册账号：00000<br />
                邮箱：保密<br />
                
                </div>


                <div class="message-content">
                留言内容：<hr />
                管理员可见
                <div class="message-admin-replay">
                <div class="message-replay-time">管理员【周琼】于【2013/11/20/23:00】回复：</div>
                <hr />
                xxxxxxxxxx,谢谢！
                </div>
                <div class="message-user-replay">
              <div  class="message-replay-time">【龚贵伟】于【2013/11/20/23:20】 回复：</div> 
               <hr />谢谢！( ^_^ )( ^_^ )
                </div>
                </div>
                
                <div style="clear:both;"></div>
            </div>
            
            <div style="clear:both;"></div>
            <div class="message">
                <div class="message-info">
                
                <span class="message-time" >2013/11/20/21:26</span>
                <span class="float-right">#10 [回复留言]</span>
                </div>

                 <div class="message-userinfo">
                昵称：消失的地平线<br />
                QQ：保密<br />
                地址：<br />
                电话：保密<br />
                注册账号：00000<br />
                邮箱：保密<br />
               
                </div>


                <div class="message-content">
                留言内容：<hr />
                管理员可见
                <div class="message-admin-replay">
                <div class="message-replay-time">管理员【周琼】于【2013/11/20/23:00】回复：</div>
                <hr />
                xxxxxxxxxx,谢谢！
                </div>
                <div class="message-user-replay">
              <div  class="message-replay-time">【龚贵伟】于【2013/11/20/23:20】 回复：</div> 
               <hr />谢谢！( ^_^ )( ^_^ )
                </div>
                </div>
                
                <div style="clear:both;"></div>
            </div>
            
            <div style="clear:both;"></div>

            
<div class="pager">
                    <span class="pager-num">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                    </span>
                    <input class="to-page" type="text" />
                    <a href="#" class="goto-page">GO</a>
                    <span class="pager-info">16 | 1/2 页</span>
                </div>

            </div> 

            <!--侧边-->
            
            <div id="sidebar">
                <div class="sidebar-border sidebar-class">
                    <h2 style="height: 125px">欢迎进入中医药搜索学习交流小天地，亲爱的，您可以在这里留下您宝贵的意见哦！   (*^__^*)(*^__^*)(*^__^*)</h2>
                    <ul>
                        <li><a href="#">
                            <img src="images/木瓜海棠.jpg" /></a></li>
                        <li><a href="#"><img src="images/仙茅.jpg" /></a></li>
                        <li><a href="#"><img src="images/西府海棠1_副本.jpg" /></a></li>
                        <li><a href="#"><img src="images/1.jpg" /></a></li>
                        <li><a href="#"><img src="images/连翘%20-%20副本.jpg" /></a></li>
                    </ul>
                </div>
            </div>
        </div>

      <div style="clear:both;"></div>
 <!--页脚-->
        <div id="footer">
            <p>Useright © 2013 - 2015 All Rights Reserved</p>
            <p>【周琼】 版权所有</p>
        </div>  
        </form>
</body>
</html>
