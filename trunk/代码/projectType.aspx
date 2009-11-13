<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="projectType.aspx.cs" Inherits="projectType" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">客户分类</font></h3>
    <!--<div id="search">
				<input type="text" class="search" /><input type="submit" class="submit" value="Submit" />
			</div><!-- search -->
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3> 
			<p class="testimonial" align="center">工程展示</p> -->
    <ul>
        <li id="news" align="left"><a href="./projectType.aspx?proType=0" target="_self">政府机关单位</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=1" target="_self">公安系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=2" target="_self">房地产住宅区</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=3" target="_self">企、事业单位</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=4" target="_self">公路收费站</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=5" target="_self">石化系统</a></li>
        <li id="news" align="left"><a href="./projectType.aspx?proType=6" target="_self">其他</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div class="Ctopright">
    </div>
    <div id="cB1" style="width: 400px">
        <h3>
            <%--<font style="font-family: '微软雅黑'; font-size: 16px">最新工程</font></h3>--%>
            <asp:Label ID="proTypeTitle" runat="server" Font-Size="16px"></asp:Label>
        </h3>
        <table>
            <tr>
                <td style="width: 20px">
                </td>
                <td>
                    <asp:GridView ID="proList" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False"
                        OnPageIndexChanging="proList_PageIndexChanging" OnRowCreated="proList_RowCreated">
                        <Columns>
                            <asp:HyperLinkField Text="&gt;&gt;" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div id="news">
                                        <a href="ProjectsIntro.aspx?proId=<%#Eval("ID") %>">
                                            <p>
                                                <%#Eval("projectName") %>
                                            </p>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <p style="text-align" align="center">
                                此类客户暂未添加工程
                            </p>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
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
                                        <img border="0" style="width:150px" src="<%#Eval("imagePath") %>"></a>
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
