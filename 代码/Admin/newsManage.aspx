<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="newsManage.aspx.cs" Inherits="Admin_newsManage" Title="&#26080;&#26631;&#39064;&#39029;" %>

<%@ Register Assembly="DotNetTextBox" Namespace="DotNetTextBox" TagPrefix="DNTB" %>
<%@ Import Namespace="XpCtrl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active">
            <asp:LinkButton ID="CreateNewsLB" runat="server" CausesValidation="False" OnClick="CreateNewsLB_Click"><strong>&#26032;&#38395;&#28155;&#21152;</strong></asp:LinkButton>
        </li>
        <li class="active">
            <asp:LinkButton ID="NewsListLB" runat="server" CausesValidation="False" OnClick="NewsListLB_Click"><strong>&#26032;&#38395;&#21015;&#34920;</strong></asp:LinkButton>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">
    <div style="width: 100%">
        <asp:Panel ID="NewsCreatePL" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#26032;&#38395;&#28155;&#21152;</strong></span>
            </div>
            <table style="font-size: 12px; text-align: left">
                <tr>
                    <th style="width: 80px">
                        &#26631;&#39064;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtNewsTitle" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RTitle" runat="server" ErrorMessage="&#26631;&#39064;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtNewsTitle" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#20998;&#31867;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:DropDownList ID="NewsTypeDDL" runat="server">
                            <asp:ListItem Value="1">&#20869;&#37096;&#26032;&#38395;</asp:ListItem>
                            <asp:ListItem Value="2">&#34892;&#19994;&#26032;&#38395;</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#20316;&#32773;&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtAuthor" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div>
                <strong style="font-size: 12px; margin: 2px">内容:</strong>
                <DNTB:WebEditor ID="NewsAddWebEditor" Skin="skin/xp/" runat="server"></DNTB:WebEditor>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="&#20869;&#23481;&#19981;&#33021;&#20026;&#31354;"
                    ControlToValidate="NewsAddWebEditor" Display="Dynamic">*</asp:RequiredFieldValidator>
            </div>
            <div style="padding: 0px 0px 0px 100px">
                <asp:Button ID="BtnSub1" runat="server" Text="&#25552;&#20132;" OnClick="BtnSub_Click" />
                &nbsp; &nbsp; &nbsp;<input id="BtnReset" type="reset" value="&#37325;&#32622;" />
            </div>
        </asp:Panel>
        <asp:Panel ID="NewsListPL" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#26032;&#38395;&#21015;&#34920;</strong></span>
            </div>
            <div style="margin: 5px; font-size: 12px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                    Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" OnRowCreated="GridView1_RowCreated" DataKeyNames="ID">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="title" HeaderText="&#26631;&#39064;" HeaderStyle-Font-Names="&#24494;&#36719;&#38597;&#40657;"
                            HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0" HeaderStyle-Height="30px">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="&#20998;&#31867;">
                            <ItemTemplate>
                                <asp:Label ID="TypeLabel" runat="server" Text='<%# XpNews.ShowNewsType(Convert.ToInt32(Eval("newsType"))) %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="author" HeaderText="&#20316;&#32773;" HeaderStyle-Font-Names="&#24494;&#36719;&#38597;&#40657;"
                            HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0" HeaderStyle-Height="30px">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="changeTime" HeaderText="&#26356;&#26032;&#26102;&#38388;"
                            HeaderStyle-Font-Names="&#24494;&#36719;&#38597;&#40657;" HeaderStyle-Font-Size="15px"
                            HeaderStyle-BackColor="#E0E0E0" HeaderStyle-Height="30px">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="&#20462;&#25913;" ShowHeader="False">
                            <ItemTemplate>
                                <div style="margin: 0px 0px 0px 5px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="false" CommandName="Edit"
                                        ImageUrl="~/Admin/images/edit.jpg" Text="&#32534;&#36753;" />
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="30px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="&#21024;&#38500;" ShowHeader="False">
                            <ItemTemplate>
                                <div style="margin: 0px 0px 0px 5px">
                                    <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="false" CommandName="Delete"
                                        OnClientClick="return confirm('&#30830;&#35748;&#21024;&#38500;&#27492;&#26465;&#20449;&#24687;&#65311;')"
                                        ImageUrl="~/Admin/images/delete.jpg" Text="&#21024;&#38500;" />
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="30px" />
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <p style="text-align: center;">
                            &#26032;&#38395;&#21015;&#34920;&#20026;&#31354;
                        </p>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
        </asp:Panel>
        <asp:Panel ID="NewsUpdatePL" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#26032;&#38395;&#26356;&#26032;</strong></span>
            </div>
            <asp:HiddenField ID="NewsID_HiddenField" runat="server" />
            <table style="font-size: 12px; text-align: left">
                <tr>
                    <th style="width: 80px">
                        &#26631;&#39064;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtNewsTitleUpdate" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="&#26631;&#39064;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtNewsTitleUpdate" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#20998;&#31867;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:DropDownList ID="NewsTypeDDLUpdate" runat="server">
                            <asp:ListItem Value="1">&#20869;&#37096;&#26032;&#38395;</asp:ListItem>
                            <asp:ListItem Value="2">&#34892;&#19994;&#26032;&#38395;</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#20316;&#32773;&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtAuthorUpdate" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div>
                <strong style="font-size: 12px; margin: 2px">内容:</strong>
                <DNTB:WebEditor ID="NewsUpdateWebEditor" Skin="skin/xp/" runat="server"></DNTB:WebEditor>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="&#20869;&#23481;&#19981;&#33021;&#20026;&#31354;"
                    ControlToValidate="NewsUpdateWebEditor" Display="Dynamic">*</asp:RequiredFieldValidator>
            </div>
            <div style="padding: 0px 0px 0px 180px">
                <asp:Button ID="UpdateBt" runat="server" Text="&#30830;&#35748;" OnClick="BtUpdate_Click" />
            </div>
            </table>
        </asp:Panel>
    </div>
    <div style="margin: 10px auto; text-align: left">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
    <asp:Panel ID="TotalPanel" runat="server">
        <table>
            <tr>
                <td style="width: 5px">
                </td>
                <td align="left" style="font-size: 12px; width: 40px">
                    &#24635;&#20849;&#26377;
                </td>
                <td align="center" style="font-size: 12px; color: Red">
                    <asp:Label ID="LabTatalNo" runat="server"></asp:Label>
                </td>
                <td align="right" style="font-size: 12px;">
                    &#26465;&#20449;&#24687;
                </td>
                <td>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td style="width: 5px">
                </td>
                <td align="left" style="font-size: 12px; width: 50px">
                    &#24403;&#21069;&#20026;&#31532;
                </td>
                <td align="center" style="font-size: 12px; color: Red">
                    <asp:Label ID="LabCurrentStart" runat="server"></asp:Label>
                </td>
                <td align="center" style="font-size: 12px; color: Red">
                    -
                </td>
                <td align="center" style="font-size: 12px; color: Red">
                    <asp:Label ID="LabCurrentEnd" runat="server"></asp:Label>
                </td>
                <td align="right" style="font-size: 12px;">
                    &#26465;&#20449;&#24687;
                </td>
                <td>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
