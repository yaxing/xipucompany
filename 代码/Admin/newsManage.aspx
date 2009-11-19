<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="newsManage.aspx.cs" Inherits="Admin_newsManage" Title="&#26080;&#26631;&#39064;&#39029;" %>

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
            <table>
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
                        &#26032;&#38395;&#20998;&#31867;<span style="color: #ff0033">*</span>&#65306;
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
                <tr>
                    <th style="width: 80px">
                        &#20869;&#23481;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="&#20869;&#23481;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtScript" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="&#20869;&#23481;&#38271;&#24230;&#24212;&#35813;&#22312;5&#20010;&#23383;&#31526;&#20197;&#19978;"
                            ControlToValidate="TxtScript" ValidationExpression=".{5,}">*</asp:RegularExpressionValidator>
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtScript" runat="server" Height="75px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                    </th>
                    <td align="center" rowspan="1">
                        <asp:Button ID="BtnSub1" runat="server" Text="&#25552;&#20132;" OnClick="BtnSub_Click" />
                        &nbsp; &nbsp; &nbsp;<input id="BtnReset" type="reset" value="&#37325;&#32622;" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="NewsListPL" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#26032;&#38395;&#21015;&#34920;</strong></span>
            </div>
            <div style="margin: 10px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True" Width="100%" 
                    OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" DataKeyNames="ID">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="title" HeaderText="&#26631;&#39064;" />
                        <asp:BoundField DataField="newsType" HeaderText="&#20998;&#31867;" />
                        <asp:BoundField DataField="author" HeaderText="&#20316;&#32773;" />
                        <asp:BoundField DataField="changeTime" HeaderText="&#26356;&#26032;&#26102;&#38388;" />
                        <asp:ButtonField HeaderText="&#20462;&#25913;&#20449;&#24687;" Text="&#32534;&#36753;"
                            CommandName="Edit" />
                        <asp:ButtonField HeaderText="&#21024;&#38500;&#26032;&#38395;" Text="&#21024;&#38500;"
                            CommandName="Delete" />
                    </Columns>
                    <EmptyDataTemplate>
                        <p style="text-align: center;">
                            &#26032;&#38395;&#21015;&#34920;&#20026;&#31354;
                        </p>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#ffffff" ForeColor="#000000" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#e9f2fa" Font-Bold="True" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="#e9f2fa" ForeColor="#284775" />
                </asp:GridView>
            </div>
        </asp:Panel>
        <asp:Panel ID="NewsUpdatePL" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#26032;&#38395;&#26356;&#26032;</strong></span>
            </div>
            <asp:HiddenField ID="NewsID_HiddenField" runat="server" />
            <table>
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
                        &#26032;&#38395;&#20998;&#31867;<span style="color: #ff0033">*</span>&#65306;
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
                <tr>
                    <th style="width: 80px">
                        &#20869;&#23481;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="&#20869;&#23481;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtScriptUpdate" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="&#20869;&#23481;&#38271;&#24230;&#24212;&#35813;&#22312;5&#20010;&#23383;&#31526;&#20197;&#19978;"
                            ControlToValidate="TxtScriptUpdate" ValidationExpression=".{5,}">*</asp:RegularExpressionValidator>
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtScriptUpdate" runat="server" Height="75px" TextMode="MultiLine"
                            Width="320px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                    </th>
                    <td align="center" rowspan="1">
                        <asp:Button ID="UpdateBt" runat="server" Text="&#30830;&#35748;" OnClick="BtUpdate_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div style="margin: 10px auto; text-align: left">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
</asp:Content>
