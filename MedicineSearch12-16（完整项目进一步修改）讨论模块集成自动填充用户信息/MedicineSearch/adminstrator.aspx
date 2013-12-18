<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminstrator.aspx.cs" Inherits="MedicineSearch.adminstrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="../ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        </style>
        <script src="../jquery/jquery-1.3.2.min.js" type="text/javascript"></script>   
        <script src="../ligerUI/js/core/base.js" type="text/javascript"></script>
        <script src="../ligerUI/js/plugins/ligerLayout.js" type="text/javascript"></script>
        <script src="../ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
            <script type="text/javascript">

                $(function () {

                    $("#layout1").ligerLayout({ leftWidth: 200 });
                });

         </script> 
        <style type="text/css"> 

            body{ padding:5px; margin:0; padding-bottom:15px;}
            #layout1{  width:100%;margin:0; padding:0;  }  
            .l-page-top{ height:80px; background:#f8f8f8; margin-bottom:3px;}
            h4{ margin:20px;}
              </style>   
    <script type="text/javascript">
        $(function () {
            $("#tree1").ligerTree({ checkbox: true });
            $("#tree2").ligerTree({ checkbox: false });
            $("#tree3").ligerTree({ checkbox: false, parentIcon: null, childIcon: null });
        });
    </script>
</head>
  <body style="padding:10px"> 
      <div style="height: 46px;width:100%;background:url(../images/medicin_search_menu_hover.jpg)" ></div> 
      <div id="layout1">
            <div position="left">
                <div style="width:150px; height:300px; margin:10px; float:left;  border:1px solid #f00; overflow:auto;  ">
                <ul id="tree3">
                    <li><span>用户管理</span>
                        <ul>
                            <li> <span>添加用户</span></li>
                             <li><span>编辑用户</span></li>
                        </ul>
                    </li> 
                    <li><span>药材管理</span>
                        <ul>
                            <li > <span>添加药材</span></li>
                             <li><span>编辑药材</span></li>
                        </ul>
                    </li>
                    <li><span>课件管理</span>
                        <ul>
                            <li><span>添加课件</span></li>
                            <li><span>编辑课件</span></li>
                        </ul>
                    </li>
                </ul>
                </div>
                        </div>
            <div position="center" title="标题">
           
        </div> 
        </div>
    </body>
</html>
