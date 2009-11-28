<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Structure.aspx.cs" Inherits="Structure" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="Ctopleft"></div>			
		<h3><font style="font-family:'微软雅黑'; font-size:16px">公司概况</font></h3>
		<!--<div id="search">
			<input type="text" class="search" /><input type="submit" class="submit" value="Submit" />
		</div><!-- search -->
		<p>&nbsp;</p>
		<!--<h3>TESTIMONIALS</h3>  -->
		<ul>
        <li id="news" align="left"><a href="./Situation.aspx" target="_self">公司简介</a></li>
        <li id="news" align="left"><a href="./Word.aspx" target="_self">总经理的话</a></li>
        <%--<li id="news" align="left"><a href="./Culture.aspx" target="_self">企业文化</a></li>--%>
        <li id="news" align="left"><a href="./Structure.aspx" target="_self">公司结构</a></li>
        </ul>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
            <div class="Ctopright"></div>			
			  <h3><font style="font-family:'微软雅黑'; font-size:16px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司结构</font></h3>
               <div id="news">
                     <table width="618" border="0">
                          <tr>
                            <td width="26">&nbsp;</td>
                            <td width="195">&nbsp;</td>
                            <td width="253">&nbsp;</td>
                            <td width="60">&nbsp;</td>
                            <td width="62">&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td colspan="3" valign="middle"><img src="images//structure.jpg" width="521" /></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                  </table>	 
		  </div>		
</asp:Content>

