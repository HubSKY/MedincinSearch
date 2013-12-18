<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="MedicineSearch.download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search</title>
<link href="css/Search2.css" rel="stylesheet" type="text/css" />
<link href="css/ziliao.css" rel="stylesheet" type="text/css" />
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
                <li><a href="MYmessage.aspx">讨论</a></li>
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
                
                   <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false"    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="898px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="6" >
                       <AlternatingRowStyle BackColor="PaleGoldenrod" />
                       <FooterStyle BackColor="Tan" />
                       <HeaderStyle BackColor="Tan" Font-Bold="True" />
                       <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                       <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                       <SortedAscendingCellStyle BackColor="#FAFAE7" />
                       <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                       <SortedDescendingCellStyle BackColor="#E1DB9C" />
                       <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                       <PagerTemplate>
                              <table width="100%">
                                     <tr>
                                         <td style="text-align: center">
                                                                第<asp:Label ID="lblPageIndex" runat="server" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' ForeColor="red" />页
                                                                共<asp:Label ID="lblPageCount" runat="server" Text='<%# ((GridView)Container.Parent.Parent).PageCount %>' />页
                                                                <asp:LinkButton ID="btnFirst" runat="server" CausesValidation="False" CommandArgument="First"
                                                                 Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"   CommandName="Page" Text="首页" />
                                                                <asp:LinkButton ID="btnPrev" runat="server" CausesValidation="False" CommandArgument="Prev" 
                                                                 Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" CommandName="Page" Text="上一页" />
                                                                <asp:LinkButton ID="btnNext" runat="server" CausesValidation="False" CommandArgument="Next"
                                                                 Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>" CommandName="Page" Text="下一页" />
                                                                <asp:LinkButton ID="btnLast" runat="server" CausesValidation="False" CommandArgument="Last"
                                                                 Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>" CommandName="Page" Text="尾页" />
                                          </td>
                                     </tr>
                              </table>
                        </PagerTemplate>
                       <Columns>
                           <asp:TemplateField HeaderText="文件">
                               <ItemTemplate>
                                   <table border="0" style="width:100%">
                                       <tr>
                                           <td width="350px">
                                               <a  href='playVedio.aspx?Curl=<%#DataBinder.Eval(Container.DataItem,"Curl") %>'>
                                               <%#DataBinder.Eval(Container.DataItem,"Cname") %>
                                               </a>
                                           </td>
                                           <td style="width:20px">
                                           </td>
                                           <td width="100px">
                                               <%#DataBinder.Eval(Container.DataItem,"Ccount") %>
                                           </td>
                                            <td style="width:20px">
                                           </td>
                                            <td>
                                               <%#DataBinder.Eval(Container.DataItem,"Cbrifintro") %>
                                           </td>
                                            <td style="width:20px">
                                           </td>
                                           <td style="vertical-align:middle; width:200px;height:75px">
                                                <a href='<%#DataBinder.Eval(Container.DataItem,"Curl") %>'>
                                                    <span>
                                                       下载
                                                    </span><br />
                                                </a>
                                           </td>
                                       </tr>
                                   </table>
                               </ItemTemplate>


                           </asp:TemplateField>
                       </Columns>

                   </asp:GridView>
                
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
