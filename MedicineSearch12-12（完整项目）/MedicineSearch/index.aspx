<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MedicineSearch.iindex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>zhuye</title>
    <link href="css/indexMain.css" rel="stylesheet" type="text/css" />
    <link href="css/indexContent.css" rel="stylesheet" type="text/css" />
<link href="css/IndexserachPage.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="medicin_search_container">
    <div id="medicin_search_banner"> 
     <div id="medicin_search_login">
       <ul id="showlogin" runat="server">
                <li><a href="login.aspx" > 登录 </a></li>
                <li><a href="register.aspx"> 注册 </a></li>
          </ul>   
       </div>
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
                <asp:TextBox ID="searchText" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:Button ID="searchButton" runat="server" Text="搜索" OnClick="searchButton_Click" />
            </form>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
    <div style="padding-top:20px">&nbsp;</div>
   <div id="medicin_search_content">


   <div id="Div1">
    <div id="templatemo_main">
    <div class="fp_box5">
        <img src="images/applications.png" alt="Image 01" width="52" height="57" />
        <h2><a href="onlineTest.aspx">在线测试</a></h2>
        <p>   在线测试，主要用于学生测试一些关于中药的一些基本知识</p>
    </div>
    <div class="fp_box5">
        <img src="images/desktop_aurora_borealis.png" alt="Image 02" width="57" height="57" />
        <h2><a href="download.aspx">课件下载</a></h2>
        <p>课件下载，主要是将用户上传的文档和视频进行下载</p>
    </div>
    <div class="fp_box5">
        <img src="images/invoice.png" alt="Image 03" width="57" height="57" />
        <h2><a href="discuss.aspx">讨论互动</a></h2>
        <p>讨论互动，用户之间相互交流探讨</p>
    </div>
    <div class="fp_box5">
        <img src="images/preferences.png" alt="Image 04" width="57" height="57"  />
        <h2><a href="expriment.aspx">图片展示</a></h2>
        <p>照片展示，一些中药素材的照片进行展示，和简单的相关介绍</p>
    </div>
    <div class="fp_box5 no_margin_right">
        <img src="images/presentation.png" alt="Image 05" width="57" height="57"  />
        <h2><a href="about-us.aspx">关于我们</a></h2>
        <p>关于我们，我们开发小组的简要介绍以及项目的简单介绍</p>
    </div>
    <div class="cleaner h50"></div>
    <div class="col_12 float_l">
    	<h2>欢迎来到中药学习平台</h2>
        <img src="images/templatemo_image_01.jpg" alt="Image 01" class="float_l img_float_l" />
        <p><em>中药学习平台为大家提供一个以学习为中心的全新平台</em></p>
        <p>中医药教学平台</strong>的宗旨是方便网友们能够找到自己需要的药材知识,我们打破了传统的教学模式，摆脱了教室的束缚。随时随地，只要您可以上网，您就可以用我们的网站学习自己想要的药材。 </p>
    </div>
    <div class="col_12 float_r">
    	<h2>中草药历史 </h2>
        <img src="images/Main灵芝.jpg" alt="Image 02" class="float_l img_float_l" />
        <p><em>中药在中国的发展有着悠久的历史</em></p>
        <p>中草药是各种中草药中医预防治疗疾病所使用的独特药物，也是中医区别于其他医学的重要标志。
中国人民对中草药的探索经历了几千年的历史。相传，神农尝百草，首创医药，神农被尊为“药皇”。
中药主要由植物药（根、茎、叶、果）、动物药（内脏、皮、骨、器官等）和矿物药组成。因植物药占中药的大多数，所以中药也称中草药。目前，各地使用的中药已达5000种左右，把各种药材相配伍而形成的方剂，更是数不胜数。</p>	
    </div>
    
    <div class="cleaner"></div>
</div> <!-- END of main -->
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
