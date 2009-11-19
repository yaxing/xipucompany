<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="TecManagement.aspx.cs" Inherits="Admin_TecManagement" Title="&#26080;&#26631;&#39064;&#39029;" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
     <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="adminIndex.aspx"><strong>工程管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>技术文档管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>客户管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>营业部管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>招聘信息管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>客户留言管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>新闻管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>管理员信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server">   
        <asp:FormView ID="upload" OnItemCommand="upload_ItemCommand" runat="server">                   
             <InsertItemTemplate>
             <table>
                   <tr>
                      <td>文&nbsp;件&nbsp;名：&nbsp;<asp:TextBox ID="fileName" runat="server"></asp:TextBox></td>
                      <td>
                       </td>
                   </tr>
                   <tr>
                      <td>文档编号：<asp:TextBox ID="fileNumber" runat="server"></asp:TextBox></td>
                      <td>
                          
                       </td>
                   </tr> 
                   <tr>
                      <td valign=top>文档类型：<asp:DropDownList ID="fileType" runat="server">
                          <asp:ListItem Value="1">技术规范</asp:ListItem>
                          <asp:ListItem Value="2">安装技术</asp:ListItem>
                          <asp:ListItem Value="3">参数解释</asp:ListItem>
                          <asp:ListItem Value="4">典型应用</asp:ListItem>
                          <asp:ListItem Value="5">其他</asp:ListItem>
                          </asp:DropDownList>
                      </td>
                   </tr>                   
                   <tr>
                      <td>
                      文档选择：<asp:FileUpload ID="fileUpload" runat="server" /> 
                      </td>
                   </tr>
                   <tr>
                      <td align=center>
                          <asp:Button ID="submit" CommandName="upload" runat="server" Text="上传" />
                      </td>
                   </tr>
                   <tr>
                   <td align=center>
                       <asp:RequiredFieldValidator ID="fileNameValidator" runat="server"  ControlToValidate="fileName"
                              ErrorMessage="文件名不能为空" Display="Dynamic">文件名不能为空</asp:RequiredFieldValidator>                       
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" 
                              ControlToValidate="fileName" ErrorMessage="文件名过长" 
                              ValidationExpression="^[\u4e00-\u9fa5]{0,20}">文件名过长</asp:RegularExpressionValidator>
                       <br />
                       <asp:RequiredFieldValidator ID="fileNumberValidator" runat="server"  ControlToValidate="fileNumber" Display=Dynamic
                              ErrorMessage="文档编号不能为空">文档编号不能为空</asp:RequiredFieldValidator>                      
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                              ControlToValidate="fileNumber" ErrorMessage="文档编号太长" 
                              ValidationExpression="^[\u4e00-\u9fa5]{0,20}">文档编号过长</asp:RegularExpressionValidator>
                   </td>
                   </tr>
                </table>                  
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Button ID="uploadbtn" CommandName="changemode" runat="server" Text="我要上传新文档" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:GridView ID="XpTecList" runat="server" AllowPaging="True" DataKeyNames="ID" 
            AutoGenerateColumns="False" BorderWidth="0px" BorderStyle="None" 
            GridLines="None" Width="300px" OnRowDeleting="XpTecList_RowDeleting">
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
            <Columns>
                <asp:BoundField DataField="doName" HeaderText="文档名" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="doNumber" HeaderText="文档编号" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="addTime" DataFormatString="{0:yyyy/MM/dd}" 
                    HeaderText="上传日期" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="delete" runat="server" CausesValidation="false" OnClientClick="return confirm('确认要删除吗？');"
                            CommandName="delete" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>                
            </EmptyDataTemplate>
        </asp:GridView>	      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
</asp:Content>

