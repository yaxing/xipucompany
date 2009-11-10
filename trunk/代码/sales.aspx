<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="sales.aspx.cs" Inherits="sales" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">分类列表</font></h3>
    <ul>
        <a href="./sales.aspx"" " target="_self">
            <li id="news" align="left">营业部</li></a> <a href="./customer.aspx" target="_self">
                <li id="news" align="left">客户</li></a>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div class="Ctopright">
    </div>
    <div id="main">
        <div id="letter">
            <img src="./images/arrow_0.gif" width="11" height="12" />
            <span><strong>营业部</strong></span>
        </div>
        <div id="cA img">
            <asp:Image ID="SalesImage" runat="server" ImageUrl='<%#Eval("imagePath") %>' width="438" height="339"/>
        </div>
        <span><strong>各营业部联系方式</strong></span>
        <asp:GridView ID="SalesGridView" runat="server" CellPadding="4" ForeColor="#333333" Width="80%"
            GridLines="None" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="SalesGridView_PageIndexChanging">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="area" HeaderText="地区" />
                <asp:BoundField DataField="departmentName" HeaderText="名称" />
                <asp:BoundField DataField="address" HeaderText="地址" />
                <asp:BoundField DataField="tel" HeaderText="联系方式" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#ffffff" ForeColor="#000000" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#e9f2fa" Font-Bold="True" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="#e9f2fa" ForeColor="#284775" />
        </asp:GridView>
    </div>
    <!-- cB1 -->
</asp:Content>
