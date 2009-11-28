<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="TecManagement.aspx.cs" Inherits="Admin_TecManagement" Title="&#26080;&#26631;&#39064;&#39029;" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="ProjectManagement.aspx"><strong>工程管理</strong></a></li>
        <li><a href="TecManagement.aspx"><strong>技术文档管理</strong></a></li>
        <li><a href="SalesManage.aspx"><strong>客户管理</strong></a></li>
        <li><a href="SalesManage.aspx"><strong>客户/营业部</strong></a></li>
        <li><a href="HrManage.aspx"><strong>招聘信息管理</strong></a></li>
        <li><a href="bbsManage.aspx"><strong>客户留言管理</strong></a></li>
        <li><a href="newsManage.aspx"><strong>新闻管理</strong></a></li>
        <li><a href="adminInfo.aspx?ID=0"><strong>管理员信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server">   
        <asp:FormView ID="upload" OnItemCommand="upload_ItemCommand" runat="server">                   
             <InsertItemTemplate>
             <table cellpadding = "10" cellspacing = "0" align=center>
                   <tr>
                      <td><font style="font-family: 微软雅黑;color:Black; font-size: 12px">文&nbsp;件&nbsp;名：&nbsp;<asp:TextBox ID="fileName" runat="server"></asp:TextBox></font></td>
                      <td>
                       </td>
                   </tr>
                   <tr>
                      <td><font style="font-family: 微软雅黑;color:Black; font-size: 12px">文档编号：<asp:TextBox ID="fileNumber" runat="server"></asp:TextBox></font></td>
                      <td>
                          
                       </td>
                   </tr> 
                   <tr>
                      <td valign=top><font style="font-family: 微软雅黑;color:Black; font-size: 12px">文档类型：<asp:DropDownList ID="fileType" runat="server">
                          <asp:ListItem Value="1">技术规范</asp:ListItem>
                          <asp:ListItem Value="2">安装技术</asp:ListItem>
                          <asp:ListItem Value="3">参数解释</asp:ListItem>
                          <asp:ListItem Value="4">典型应用</asp:ListItem>
                          <asp:ListItem Value="5">其他</asp:ListItem>
                          </asp:DropDownList></font>
                      </td>
                   </tr>                   
                   <tr>
                      <td>
                      <font style="font-family: 微软雅黑; color:Black; font-size: 12px">文档选择：<asp:FileUpload ID="fileUpload" runat="server" CausesValidation="false" /> </font>
                      </td>
                   </tr>
                   <tr>
                      <td align=center>
                          <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:Button ID="submit" CommandName="upload" runat="server" Text="上传" /></font>
                      </td>
                   </tr>
                   <tr>
                   <td align=center>
                       <font style="font-family: 微软雅黑;color:Black; font-size: 12px">
                       <asp:RequiredFieldValidator ID="fileNameValidator" runat="server"  ControlToValidate="fileName"
                              ErrorMessage="文件名不能为空" Display="Dynamic">文件名不能为空</asp:RequiredFieldValidator>                       
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" 
                              ControlToValidate="fileName" ErrorMessage="文件名过长" 
                              ValidationExpression="^.{1,20}$">文件名过长</asp:RegularExpressionValidator>
                       <br />
                       <asp:RequiredFieldValidator ID="fileNumberValidator" runat="server"  ControlToValidate="fileNumber" Display=Dynamic
                              ErrorMessage="文档编号不能为空">文档编号不能为空</asp:RequiredFieldValidator>                      
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                              ControlToValidate="fileNumber" ErrorMessage="文档编号太长" 
                              ValidationExpression="^.{1,20}$">文档编号过长</asp:RegularExpressionValidator>
                       </font>
                   </td>
                   </tr>
                </table>                  
            </InsertItemTemplate>
            <ItemTemplate>
                <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:Button ID="uploadbtn" CommandName="changemode" runat="server" Text="我要上传新文档" /></font>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:GridView ID="XpTecList" runat="server" AllowPaging="True" DataKeyNames="ID" 
            AutoGenerateColumns="False" BorderWidth="0px" BorderStyle="None" 
            GridLines="None" Width="300px" OnRowDeleting="XpTecList_RowDeleting">
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
            <Columns>
                <asp:TemplateField HeaderText="文档名" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0">
                    <ItemTemplate>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:Label ID="Label1" runat="server" Text='<%# Bind("doName") %>'></asp:Label></font>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("doName") %>'></asp:TextBox></font>
                    </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="文档编号" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0">
                    <ItemTemplate>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:Label ID="Label2" runat="server" Text='<%# Bind("doNumber") %>'></asp:Label></font>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("doNumber") %>'></asp:TextBox></font>
                    </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="上传日期" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0">
                    <ItemTemplate>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:Label ID="Label3" runat="server" 
                            Text='<%# Bind("addTime", "{0:yyyy/MM/dd}") %>'></asp:Label></font>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("addTime") %>'></asp:TextBox></font>
                    </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderText="操作名称" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0">
                    <ItemTemplate>
                        <p align=center>
                        <font style="font-family: 微软雅黑;color:Black; font-size: 12px"><asp:LinkButton ID="delete" runat="server" CausesValidation="false" OnClientClick="return confirm('确认要删除吗？');"
                            CommandName="delete" ><font style="font-family: 微软雅黑;color:Black; font-size: 12px">删除</font></asp:LinkButton></font>
                        </p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>                
            </EmptyDataTemplate>
        </asp:GridView>	   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
</asp:Content>

