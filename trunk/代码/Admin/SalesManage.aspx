<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="SalesManage.aspx.cs" Inherits="Admin_SalesManage" Title="&#26080;&#26631;&#39064;&#39029;" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active">
            <asp:LinkButton ID="SalesAddLBt" runat="server" CausesValidation="False" OnClick="SalesAddLBt_Click"><strong>&#33829;&#19994;&#37096;&#28155;&#21152;</strong></asp:LinkButton>
        </li>
        <li class="active">
            <asp:LinkButton ID="SalesListLBt" runat="server" CausesValidation="False" OnClick="SalesListLBt_Click"><strong>&#33829;&#19994;&#37096;&#21015;&#34920;</strong></asp:LinkButton>
        </li>
        <li class="active">
            <asp:LinkButton ID="CustomerAddLBt" runat="server" CausesValidation="False" OnClick="CustomerAddLBt_Click"><strong>&#23458;&#25143;&#28155;&#21152;</strong></asp:LinkButton>
        </li>
        <li class="active">
            <asp:LinkButton ID="CustomerListLBt" runat="server" CausesValidation="False" OnClick="CustomerListLBt_Click"><strong>&#23458;&#25143;&#21015;&#34920;</strong></asp:LinkButton>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">
    <div style="width: 100%">
        <asp:Panel ID="SalesAddPanel" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#33829;&#19994;&#37096;&#28155;&#21152;</strong></span>
            </div>
            <table style="font-size: 12px; text-align: left">
                <tr>
                    <th style="width: 80px">
                        &#22320;&#21306;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtSalesArea" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVArea" runat="server" ErrorMessage="&#22320;&#21306;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtSalesArea" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#21517;&#31216;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtSalesName" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="&#21517;&#31216;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtSalesName" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#32852;&#31995;&#26041;&#24335;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtTel" runat="server" MaxLength="128"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVTel" runat="server" ErrorMessage="&#32852;&#31995;&#26041;&#24335;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtTel" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#22320;&#22336;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtAddress" runat="server" Height="75px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ErrorMessage="&#22320;&#22336;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtAddress" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                    </th>
                    <td align="center" rowspan="1">
                        <asp:Button ID="SalesAddSubBt" runat="server" Text="&#25552;&#20132;" OnClick="SalesAddSubBt_Click" />
                        &nbsp; &nbsp; &nbsp;<input id="BtnReset" type="reset" value="&#37325;&#32622;" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="SalesListPanel" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#33829;&#19994;&#37096;&#21015;&#34920;</strong></span>
            </div>
            <div style="margin: 5px; font-size: 12px">
                <asp:GridView ID="SalesGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                    Width="100%" OnPageIndexChanging="SalesGridView_PageIndexChanging" OnRowDeleting="SalesGridView_RowDeleting"
                    OnRowEditing="SalesGridView_RowEditing" DataKeyNames="ID" OnRowCreated="SalesGridView_RowCreated">
                    <Columns>
                        <asp:BoundField DataField="area" HeaderText="&#22320;&#21306;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="departmentName" HeaderText="&#21517;&#31216;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="&#22320;&#22336;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tel" HeaderText="&#32852;&#31995;&#26041;&#24335;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="100px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="&#20462;&#25913;" ShowHeader="False">
                            <ItemTemplate>
                                <div>
                                    <img src="images/edit.jpg" />
                                    <asp:LinkButton ID="lbtnEdit" runat="server" CausesValidation="false" CommandName="Edit"><font style="font-family:&#24494;&#36719;&#38597;&#40657;; color:Black; font-size:12px">&#20462;&#25913;</font></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="&#21024;&#38500;" ShowHeader="False">
                            <ItemTemplate>
                                <div>
                                    <img src="images/delete.jpg" />
                                    <asp:LinkButton ID="lbtnDelete" runat="server" CausesValidation="false" CommandName="Delete"
                                        OnClientClick="return confirm('&#30830;&#35748;&#21024;&#38500;&#27492;&#26465;&#20449;&#24687;&#65311;')"><font style="font-family:&#24494;&#36719;&#38597;&#40657;; color:Black; font-size:12px">&#21024;&#38500;</font></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </asp:Panel>
        <asp:Panel ID="SalesUpdatePanel" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#33829;&#19994;&#37096;&#26356;&#26032;</strong></span>
            </div>
            <asp:HiddenField ID="SalesID_HiddenField" runat="server" />
            <table style="font-size: 12px; text-align: left">
                <tr>
                    <th style="width: 80px">
                        &#22320;&#21306;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtSalesAreaU" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="&#22320;&#21306;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtSalesAreaU" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#21517;&#31216;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtSalesNameU" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="&#21517;&#31216;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtSalesNameU" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#32852;&#31995;&#26041;&#24335;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtTelU" runat="server" MaxLength="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVTxtTelU" runat="server" ErrorMessage="&#32852;&#31995;&#26041;&#24335;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtTelU" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#22320;&#22336;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td colspan="1" style="width: 320px">
                        <asp:TextBox ID="TxtAddressU" runat="server" Height="75px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVTxtAddressU" runat="server" ErrorMessage="&#22320;&#22336;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtAddressU" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                    </th>
                    <td align="center" rowspan="1">
                        <asp:Button ID="SalesUpdateSubBt" runat="server" Text="&#25552;&#20132;" OnClick="SalesUpdateSubBt_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="CustomerAddPanel" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#23458;&#25143;&#28155;&#21152;</strong></span>
            </div>
            <table style="font-size: 12px; text-align: left">
                <tr>
                    <th style="width: 80px">
                        &#23458;&#25143;&#21517;&#31216;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtCustomerName" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVCustomerName" runat="server" ErrorMessage="&#23458;&#25143;&#21517;&#31216;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtCustomerName" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#20171;&#32461;&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtIntroduction" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#22320;&#22336;&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtCAddress" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#32852;&#31995;&#26041;&#24335;&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtCTel" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                    </th>
                    <td style="width: 320px">
                        <asp:Button ID="CustomerAddSBt" runat="server" Text="&#25552;&#20132;" OnClick="CustomerAddSBt_Click" />
                        &nbsp;&nbsp;&nbsp;<input ID="Reset2" type="reset" value="&#37325;&#32622;" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="CustomerListPanel" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#23458;&#25143;&#21015;&#34920;</strong></span></div>
            <div style="margin: 5px; font-size: 12px">
                <asp:GridView ID="CustomerGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                    Width="100%" OnPageIndexChanging="CustomerGridView_PageIndexChanging" OnRowDeleting="CustomerGridView_RowDeleting"
                    OnRowEditing="CustomerGridView_RowEditing" DataKeyNames="ID" OnRowCreated="CustomerGridView_RowCreated">
                    <Columns>
                        <asp:BoundField DataField="customerName" HeaderText="&#21517;&#31216;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="&#22320;&#22336;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="contact" HeaderText="&#32852;&#31995;&#26041;&#24335;">
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="60px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="&#20462;&#25913;" ShowHeader="False">
                            <ItemTemplate>
                                <div>
                                    <img src="images/edit.jpg" />
                                    <asp:LinkButton ID="lbtnEdit" runat="server" CausesValidation="false" CommandName="Edit"><font style="font-family:&#24494;&#36719;&#38597;&#40657;; color:Black; font-size:12px">&#20462;&#25913;</font></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="&#21024;&#38500;" ShowHeader="False">
                            <ItemTemplate>
                                <div>
                                    <img src="images/delete.jpg" />
                                    <asp:LinkButton ID="lbtnDelete" runat="server" CausesValidation="false" CommandName="Delete"
                                        OnClientClick="return confirm('&#30830;&#35748;&#21024;&#38500;&#27492;&#26465;&#20449;&#24687;&#65311;')"><font style="font-family:&#24494;&#36719;&#38597;&#40657;; color:Black; font-size:12px">&#21024;&#38500;</font></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" Font-Names="&#24494;&#36719;&#38597;&#40657;" Font-Size="15px"
                                Height="30px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </asp:Panel>
        <asp:Panel ID="CustomerUpdatePanel" runat="server">
            <div style="margin: 10px">
                <img src="../images/arrow_0.gif" /><span style="font-size: medium; font-family: @&#24494;"><strong>&#23458;&#25143;&#26356;&#26032;</strong></span>
            </div>
            <asp:HiddenField ID="CustomerID_HiddenField" runat="server" />
            <table style="font-size: 12px; text-align: left">
                <tr>
                    <th style="width: 80px">
                        &#23458;&#25143;&#21517;&#31216;<span style="color: #ff0033">*</span>&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtCustomerNameU" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVCustomerNameU" runat="server" ErrorMessage="&#23458;&#25143;&#21517;&#31216;&#19981;&#33021;&#20026;&#31354;"
                            ControlToValidate="TxtCustomerNameU" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#20171;&#32461;&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtIntroductionU" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#22320;&#22336;&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtCAddressU" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                        &#32852;&#31995;&#26041;&#24335;&#65306;
                    </th>
                    <td style="width: 320px">
                        <asp:TextBox ID="TxtCTelU" runat="server" MaxLength="128"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th style="width: 80px">
                    </th>
                    <td style="width: 320px">
                        <asp:Button ID="CustomerUpdateSBt" runat="server" Text="&#25552;&#20132;" OnClick="CustomerUpdateSBt_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <div style="margin: 10px auto; text-align: left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
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
