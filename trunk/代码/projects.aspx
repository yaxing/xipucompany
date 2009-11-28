<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="projects.aspx.cs" Inherits="projects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">客户分类</font></h3>
    <p>
        &nbsp;</p>
    <ul>
        <li id="news" align="left"><a href="./projectType.aspx?proType=0" target="_self">烟草系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=1" target="_self">银行系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=2" target="_self">证券系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=3" target="_self">酒店系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=4" target="_self">大楼、大厦</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=5" target="_self">厂矿</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=6" target="_self">民航机场</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=6" target="_self">公园</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=6" target="_self">公安系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=6" target="_self">政府机关</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=6" target="_self">学校</a></li>
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
                    <table>
                        <tr style="height:20px"></tr>
                        <tr style="font-size:13px">
                            <td style="width: 5">
                            </td>
                            <td style="width: 5">
                                >></td>
                            <td>
                                <a href="ProjectsIntro.aspx?proId=<%#Eval("ID") %>">
                                    <%#Eval("projectName") %>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                <%#Eval("projectIntro").ToString().Substring(0,2) %>
                                ...</td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!-- cB1 -->
    <div id="cB2">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">图片展示</font></h3>
        <div align="center">
            <marquee style="height: 450px" onmouseover="stop()" onmouseout="start()" direction="up"
                height="200" scrollamount="4" scrolldelay="90" behavior="scroll" width="100%">
                <asp:Repeater ID="projectImages" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td align="center">
                                    <a href="ProjectsIntro.aspx?proId=<%#Eval("ID") %>">
                                        <%#Eval("projectName") %>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="ProjectsIntro.aspx?proId=<%#Eval("ID") %>">
                                        <img border="0" style="width:200px" src="<%#Eval("imagePath") %>"></a>
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
