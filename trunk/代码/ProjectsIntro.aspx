<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ProjectsIntro.aspx.cs" Inherits="ProjectsIntro" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">客户分类</font></h3>
    <p>
        &nbsp;</p>
    <ul>
        <a href="./projectType.aspx?proType=0" target="_self">
            <li id="news" align="left">政府机关单位</li></a> <a href="./projectType.aspx?proType=1" target="_self">
                <li id="news" align="left">公安系统</li></a> <a href="./projectType.aspx?proType=2" target="_self">
                    <li id="news" align="left">房地产住宅区</li></a> <a href="./projectType.aspx?proType=3" target="_self">
                        <li id="news" align="left">企、事业单位</li></a> <a href="./projectType.aspx?proType=4" target="_self">
                            <li id="news" align="left">公路收费站</li></a> <a href="./projectType.aspx?proType=5" target="_self">
                                <li id="news" align="left">石化系统</li></a> <a href="./projectType.aspx?proType=6" target="_self">
                                    <li id="news" align="left">金融系统</li></a>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:Repeater ID="proIntro" runat="server">
    <ItemTemplate>
    <div class="Ctopright"></div>
			<div id="cB1">
				<h3><font style="font-family:'微软雅黑'; font-size:16px">工程简介————<%#Eval("projectName") %></font></h3>
				<p>&nbsp;</p>
			    <p>
			    <%#Eval("projectIntro") %>
			    </p>				
			</div><!-- cB1 -->
			
			<div id="cB2">
			 <h3><font style="font-family:'微软雅黑'; font-size:16px"></font></h3>
			 <img src="<%#Eval("imagePath") %>" alt="" />
			  <div align="center">
			  
  </div>

			</div>
			</ItemTemplate>
			</asp:Repeater>
</asp:Content>
