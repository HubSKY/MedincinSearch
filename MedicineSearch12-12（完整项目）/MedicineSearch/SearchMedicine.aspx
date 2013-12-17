<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchMedicine.aspx.cs" Inherits="MedicineSearch.SearchMedicine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MedincineSearch</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/searchMedicine.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="medicin_search_container">
	
    <div id="medicin_search_banner"></div>
    
    <div id="medicin_search_menu_search">
        <div id="medicin_search_menu">
            <ul>
               <li><a href="index.aspx">首页  </a></li>
                <li><a href="onlineTest.aspx">测试</a></li>
                <li><a href="download.aspx">课件</a></li>
                <li><a href="discuss.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
            s     <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
        </div> 
        
        <div id="search_section">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" Width="81px" /> 
            </div> 
        
        <div class="cleaner"></div>	
	</div>
    <div id="medicin_search_content">
      
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="943px" CellPadding="4" ForeColor="#333333" Height="816px" >
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table border="0" style="width:388px">
                    <tr>
                        <td style="width:25px;height:65px">
                            &nbsp;
                        </td>
                        <td style="text-align:right; vertical-align:middle; height:75px">
                            <a href='detailPage.aspx? Mno=<%# DataBinder.Eval(Container.DataItem,"Mno") %>'></a>
                            <img style="border:0; width:200px;height:250px" src='<%#DataBinder.Eval(Container.DataItem,"Mpicture")  %>' />
                        </td>
                        <td style="vertical-align:middle; width:200px;height:75px">
                            <a href='detailPage.aspx?Mno=<%#DataBinder.Eval(Container.DataItem,"Mno") %>'>
                                <span>
                                    <%#DataBinder.Eval(Container.DataItem,"Mname") %>
                                </span><br />
                            </a><span>
                                <b>描述：</b><%#DataBinder.Eval(Container.DataItem,"Mdescribe") %></span><br />

                        </td>
                    </tr>
                </table> 
            </ItemTemplate>

            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

        </asp:DataList>
    </div>
        <div style="border-style: solid; border-color: inherit; border-width: medium; width:960;height:38px;">
            <div style="padding-top:4px; width: 57px; padding-left:10px;text-align:center;float:left;">
            <h>第</h><asp:Label ID="lableCurrentPage" runat="server" Text="1"></asp:Label><h>页</h>
            

            </div>
            <div style=" float:left; padding-top:4px; width: 116px; margin-top: 0px; height: 13px; right: 111px;">

               <a>共</a> <asp:Label ID="lableSumpage" runat="server"></asp:Label><a>页</a>
            </div>

            <div style=" float:left;padding-top:4px; width: 79px;margin-top: 0px; height: 24px; ">
                <asp:Button ID="firstButton" runat="server" Text="第一页" Height="26px" Width="70px" OnClick="firstButton_Click" />
            </div>

            <div style="float:left; padding-top:4px; width: 79px;  margin-top: 0px; height: 27px; right: 586px;">
                 <asp:Button ID="upButton" runat="server" Text="上一页" Width="70px" OnClick="upButton_Click" />
            </div>
            <div style=" float:left; padding-top:4px; width: 79px; margin-top: 0px; height: 27px; right: 481px;">
                <asp:Button ID="downButton" runat="server" Text="下一页" Height="26px" Width="70px" OnClick="downButton_Click" />
            </div>
            <div style="float:left; padding-top:4px; width: 79px; top: 1187px; left: 452px; margin-top: 0px; height: 23px; right: 240px;">
                <asp:Button ID="lastButton" runat="server" Text="最后一页" Height="26px" Width="70px" OnClick="lastButton_Click" style="margin-top: 1px" />
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
