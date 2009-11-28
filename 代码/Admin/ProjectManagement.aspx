<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ProjectManagement.aspx.cs" Inherits="Admin_ProjectManagement" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
     <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="ProjectManagement.aspx"><strong>工程管理</strong></a></li>
        <li><a href="ProjectManagement.aspx"><strong>显示工程列表</strong></a></li>
        <li><a href="AddProject.aspx"><strong>添加工程项目</strong></a></li>        
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server" >
      <asp:GridView ID="project" runat="server" AllowPaging="True" DataKeyNames="ID" CellPadding="8" CellSpacing="0" 
            AutoGenerateColumns="False" BorderWidth="0px" BorderStyle="None" 
            GridLines="None" Width="391px" onrowdeleting="project_RowDeleting"
                   onrowdatabound="project_RowDataBound" >
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                   <RowStyle HorizontalAlign=Left VerticalAlign="Middle" />
            <Columns>
                <asp:TemplateField HeaderText="图片" HeaderStyle-HorizontalAlign=Left>
                    <EditItemTemplate>
                        <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("imageName") %>'></asp:TextBox>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" Height="30px" Width="30px" runat="server" ImageUrl='<%# Eval("imageName", "~/project_images/{0}") %>' />                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="projectName" HeaderText="工程名称" HeaderStyle-HorizontalAlign=Left >
                    <HeaderStyle Font-Names="微软雅黑" />
                </asp:BoundField>
                <asp:BoundField DataField="customerType" HeaderText="工程类型" HeaderStyle-HorizontalAlign=Left>
                    <HeaderStyle Font-Names="微软雅黑" />
                </asp:BoundField>
                <%--<asp:BoundField DataField="addTime" HeaderText="添加时间" 
                    DataFormatString="{0:yyyy/MM/dd}">
                    <HeaderStyle Font-Names="微软雅黑" />
                </asp:BoundField>--%>
                
                <asp:TemplateField HeaderText="删除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" OnClientClick="return confirm('确认要删除吗？');"
                            CommandName="Delete" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
</asp:Content>

