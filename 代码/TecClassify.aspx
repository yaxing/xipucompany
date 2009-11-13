﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TecClassify.aspx.cs" Inherits="TecClassify" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h3><font style="font-family:'微软雅黑'; font-size:16px">服务中心</font></h3>
    <!--<div id="search">
	    <input type="text" class="search" /><input type="submit" class="submit" value="Submit" />
    </div><!-- search -->
    <p>&nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
    <a href="TecClassify.aspx?Type=1" target="_self">
    <li id="news" align="left">技术规范</li></a>
    <a href="TecClassify.aspx?Type=2" target="_self">
    <li id="news" align="left">安装技术</li></a>
    <a href="TecClassify.aspx?Type=3" target="_self">
    <li id="news" align="left">参数解释</li></a>
    <a href="TecClassify.aspx?Type=4" target="_self">
    <li id="news" align="left">典型应用</li></a>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div id="cB1">
	<h3><font style="font-family:'微软雅黑'; font-size:16px"><asp:Label ID="TecClass" runat="server"></asp:Label></font></h3>
	&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="XpTecList" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BorderWidth="0px" BorderStyle="None" 
            GridLines="None" Width="500px">
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
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="~/Download.aspx?ID={0}" DataTextField="ID" 
                    DataTextFormatString="下载" />
            </Columns>
            <EmptyDataTemplate>
                	
            </EmptyDataTemplate>
        </asp:GridView>	    
        <asp:Literal ID="Literal" Visible = false runat="server">尚未上传任何文档</asp:Literal>    	
	</div>
	<!-- cB1 -->
	<div id="cB2">

	</div><!-- cB2 -->
</asp:Content>
