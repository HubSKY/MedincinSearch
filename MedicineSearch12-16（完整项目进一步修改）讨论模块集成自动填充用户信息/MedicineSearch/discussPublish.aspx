<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="discussPublish.aspx.cs" Inherits="MedicineSearch.discussPublish" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>讨论发布</title>
    <link href="css/Search.css" rel="stylesheet" type="text/css" />
    <link href="css/message.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #Div1 {
            height: 579px;
            background:url(../images/45007.jpg);
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
                <li><a href="MYmessage.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
                 <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
        </div> <!-- end of menu -->
        
        <div id="search_section">
           <div id="form1" >
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>  
                <asp:Button ID="btn2" runat="server" Text="搜索" OnClick="Button2_Click" />
            </div>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
     <div style="padding-top:20px">&nbsp;</div>
            <div id="Div1">
            <div id="main" style="margin-left:200px;">
    <div id="message-publish" class="main-content border">
                    <h2><em>&nbsp;</em>发表留言</h2>
                    <div class="message-input clearfix">
                     <div class="message-label"> 类别：</div>
            <div class="message-editor" >
                <asp:DropDownList ID="ddlMessageType" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlMessageType"
                    Display="Dynamic" ErrorMessage="请选择类别" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="message-label">
                类别：</div>
            
            <div class="message-label">
                昵称：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbPetName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbPetName" Display="Dynamic" ErrorMessage="请输入昵称" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="tbPetName" Display="Dynamic" ErrorMessage="长度只能在1-8字符之间" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(\s|\S){1,8}$"></asp:RegularExpressionValidator>
            </div>
            <div class="message-label">
                性别：</div>
            <div class="message-editor">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Value="男" Selected="True">先生</asp:ListItem>
                    <asp:ListItem Value="女">女生</asp:ListItem>
                    
                </asp:RadioButtonList>
            </div>




             <div class="message-label">
               电话：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbphonnumber" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="tbphonnumber" Display="Dynamic" ErrorMessage="phonnumber只能是数字" 
                    ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
            </div>



             <div class="message-label">
               注册账号：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbregisternumber" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToValidate="tbregisternumber" Display="Dynamic" ErrorMessage="registernumber只能是数字" 
                    ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
            </div>



            <div class="message-label">
                地址：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="tbAddress" Display="Dynamic" ErrorMessage="长度只能在1-4字符之间" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(\s|\S){1,4}$"></asp:RegularExpressionValidator>
            </div>
            <div class="message-label">
                QQ：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbQQ" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="tbQQ" Display="Dynamic" ErrorMessage="QQ只能是数字" 
                    ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
            </div>
            <div class="message-label">
                Email：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="不正确的邮件地址" 
                    ForeColor="Red" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
                        <%--<div class="message-label">
                IP：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbIP" runat="server" Enabled="False"></asp:TextBox>
            </div>--%>
            <div class="message-label message-input-content">
                留言内容：</div>
            <div class="message-editor message-input-content">
                <asp:TextBox ID="tbContent" runat="server" TextMode="MultiLine" Height="65px" Width="299px"></asp:TextBox>
            </div>
            <div class="message-label">
            </div>
            <div class="message-editor">
                <asp:Button ID="Button2" runat="server" Text="提交" onclick="ButtClick" />
                &nbsp;<input id="Reset1" type="reset" value="重置" /><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbContent" 
                    Display="Dynamic" ErrorMessage="请输入内容" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
                </div>
    


            <div class="pager">
                <webdiyer:AspNetPager UrlPaging="true" AlwaysShow="true" ShowFirstLast="false" ShowPrevNext="false"
                    NumericButtonCount="5" ShowCustomInfoSection="Right" ShowNavigationToolTip="true"
                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" CustomInfoHTML="%RecordCount% | %CurrentPageIndex%/%PageCount%页"
                    CustomInfoSectionWidth="80px" ID="AspNetPager1" runat="server">
                </webdiyer:AspNetPager>
            </div>
        </div>

        </div>
        
     
        </form>
        <!--侧边-->
        
 
    <div style="clear: both;">
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
