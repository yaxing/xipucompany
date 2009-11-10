<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="projects.aspx.cs" Inherits="projects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">客户分类</font></h3>
    <p>
        &nbsp;</p>
    <ul>
        <a href="./pro_government.html" target="_self">
            <li id="news" align="left">政府机关单位</li></a> <a href="./projects.html" target="_self">
                <li id="news" align="left">公安系统</li></a> <a href="./projects.html" target="_self">
                    <li id="news" align="left">房地产住宅区</li></a> <a href="./projects.html" target="_self">
                        <li id="news" align="left">企、事业单位</li></a> <a href="./projects.html" target="_self">
                            <li id="news" align="left">公路收费站</li></a> <a href="./projects.html" target="_self">
                                <li id="news" align="left">石化系统</li></a> <a href="./projects.html" target="_self">
                                    <li id="news" align="left">金融系统</li></a>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div class="Ctopright">
    </div>
    <div id="cB1">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">最新工程</font></h3>
        <asp:Repeater ID="projectsList" runat="server">
            <ItemTemplate>
                <div id="news">
                    <a href="ProjectsIntro.aspx?proId=<%#Eval("ID") %>">
                        <p>
                            <%#Eval("projectName") %>
                        </p>
                    </a>
                    <p>
                        <%#Eval("projectIntro").ToString().Substring(0,2) %>
                    </p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!-- cB1 -->
    <div id="cB2">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">图片展示</font></h3>
        <div align="center">
            <marquee style="height: 450px" onmouseover="stop()" onmouseout="start()" direction="down"
                height="200" scrollamount="4" scrolldelay="90" behavior="scroll" width="100%">
                <asp:Repeater ID="projectImages" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td align="center">
                                    <a href="">
                                        <%#Eval("projectName") %>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="">
                                        <img border="0" src="<%#Eval("imagePath") %>"></a>
                                </td>
                            </tr>
                        </table>
                        <br>
                    </ItemTemplate>
                </asp:Repeater>
            </marquee>
        </div>
    </div>
    <!-- cB2 -->
</asp:Content>
