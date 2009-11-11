<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="customer.aspx.cs" Inherits="customer" Title="营销网络" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">分类列表</font></h3>
    <ul>
        <li id="news" align="left"><a href="./sales.aspx"" " target="_self">营业部</a></li>
        <li id="news" align="left"><a href="./customer.aspx" target="_self">客户</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div class="Ctopright">
    </div>
    <div id="main">
        <div id="letter">
            <img src="./images/arrow_0.gif" width="11" height="12" />
            <span><strong>客户</strong></span>
        </div>
        <span><strong>客户联系方式</strong></span>
        <asp:GridView ID="CustomerGridView" runat="server" CellPadding="4" ForeColor="#333333"
            Width="80%" GridLines="None" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="CustomerGridView_PageIndexChanging">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="customerName" HeaderText="名称" />
                <asp:BoundField DataField="address" HeaderText="地址" />
                <asp:BoundField DataField="contact" HeaderText="联系方式" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#ffffff" ForeColor="#000000" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#e9f2fa" Font-Bold="True" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="#e9f2fa" ForeColor="#284775" />
        </asp:GridView>
    </div>
</asp:Content>
