<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ProjectsIntro.aspx.cs" Inherits="ProjectsIntro" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">客户分类</font></h3>
    <p>
        &nbsp;</p>
    <ul>
        <li id="news" align="left"><a href="./projectType.aspx?proType=0" target="_self">烟草系统</a></li>
        <li id="Li1" align="left"><a href="./projectType.aspx?proType=1" target="_self">银行系统</a></li>
        <li id="Li2" align="left"><a href="./projectType.aspx?proType=2" target="_self">证券系统</a></li>
        <li id="Li3" align="left"><a href="./projectType.aspx?proType=3" target="_self">酒店系统</a></li>
        <li id="Li4" align="left"><a href="./projectType.aspx?proType=4" target="_self">大楼、大厦</a></li>
        <li id="Li5" align="left"><a href="./projectType.aspx?proType=5" target="_self">厂矿</a></li>
        <li id="Li6" align="left"><a href="./projectType.aspx?proType=6" target="_self">民航机场</a></li>
        <li id="Li7" align="left"><a href="./projectType.aspx?proType=6" target="_self">公园</a></li>
        <li id="Li8" align="left"><a href="./projectType.aspx?proType=6" target="_self">公安系统</a></li>
        <li id="Li9" align="left"><a href="./projectType.aspx?proType=6" target="_self">政府机关</a></li>
        <li id="Li10" align="left"><a href="./projectType.aspx?proType=6" target="_self">学校</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:Repeater ID="proIntro" runat="server">
        <ItemTemplate>
            <div class="Ctopright">
            </div>
            <div id="cB1">
                <h3>
                    <font style="font-family: '微软雅黑'; font-size: 16px">工程简介————<%#Eval("projectName") %></font></h3>
                <p>
                    &nbsp;</p>
                <table>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <font style="font-size: 15px">
                                <%#Eval("projectIntro") %>
                            </font>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- cB1 -->
            <div id="cB2">
                <h3>
                    <font style="font-family: '微软雅黑'; font-size: 16px"></font>
                </h3>
                <p style="height: 45px">
                </p>
                <a href="projectImageShow2.aspx?path=<%#Eval("imagePath") %>" target="_blank">
                    <img style="width: 250px" src="<%#Eval("imagePath") %>"  title="查看大图" alt="" />
                </a>
                <div align="center">
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
