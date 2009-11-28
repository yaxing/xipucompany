<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Situation.aspx.cs" Inherits="Situation" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="Ctopleft">
    </div>
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">公司概况</font></h3>
    <!--<div id="search">
			<input type="text" class="search" /><input type="submit" class="submit" value="Submit" />
		</div><!-- search -->
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
        <li id="news" align="left"><a href="./Situation.aspx" target="_self">公司简介</a></li>
        <li id="news" align="left"><a href="./Word.aspx" target="_self">总经理的话</a></li>
        <%--<li id="news" align="left"><a href="./Culture.aspx" target="_self">企业文化</a></li>--%>
        <li id="news" align="left"><a href="./Structure.aspx" target="_self">公司结构</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司简介</font></h3>
    <div id="news">
        <table width="618" border="0">
            <tr>
                <td width="26">
                    &nbsp;</td>
                <td width="195" align="center" valign="middle">
                    <img src="images/building.jpg" width="197" height="154" /></td>
                    <td style="width:15px">
                    </td>
                <td width="253" valign="middle" style="font-size: 15px">
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;云南希普防雷工程有限公司成立于1997年，是云南省最早成立的专业防雷公司。公司秉承严谨务实的作风，多年来专心做好服务云南省各类型的防雷工程，创造了综合防雷工程的体系，按照“系统、全面、综合的原则”进行设计施工。为客户创造一个更加安全的防雷环境。是云南省完成大型综合防雷工程最多的公司。</p>
                </td>
                <td width="60">
                    &nbsp;</td>
                <td width="62">
                    &nbsp;</td>
            </tr>
        </table>
        <table>
        <tr style="height:30px">
        </tr>
            <%--<tr>
                            <td>&nbsp;</td>
                            <td colspan="3" valign="middle"><p><font color="#000000" size="+1"><b>业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</b></font><br /><br />勘察、评价、设计、施工，是目前云南省防雷设计、施工资质最高的公司之一。</p></td>
                            <td>&nbsp;</td>
                          </tr>                          
                          <tr>
                            <td>&nbsp;</td>
                            <td colspan="3" valign="middle"><p><font color="#000000" size="+1"><b>人力资源：</b></font><br /><br />
                          公司汇集了一批高级工程师、工程师及高中级技术人员，在多年的实践中了丰富的勘察、设计、施工经验，能够整合国内外先进防雷科技成果应用于防雷工程，并为客户提供性能可靠、经济适用的防雷设备。</p></td>
                            <td>&nbsp;</td>
                          </tr>                          
                          <tr>
                            <td>&nbsp;</td>
                            <td colspan="3" valign="middle"><p><font color="#000000" size="+1"><b>服务范围：</b></font><br /><br />高层建筑、工业厂区、水塔、物资仓库、易燃易爆产品场所、露天堆场、油库、大型公共场所、邮电通讯和广播电视设施、电站（厂）、变电站、电网、计算机设备及其场地、微电子设备及其他易受雷击的建（构）筑物等防雷设置（设施）的勘察、设计与安装。</p></td>
                            <td>&nbsp;</td>
                          </tr>                          
                          <tr>
                            <td>&nbsp;</td>
                            <td colspan="3" valign="middle"><p><font color="#000000" size="+1"><b>前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景：</b></font><br /><br />公司通过不断地探索创新，正在进入新的发展时期——集合现代防雷的最新研究成果，形成集防雷设备实验场所、防雷系统管理工程和防雷系统综合评价体系为一体的大型防雷企业。</p></td>
                            <td>&nbsp;</td>
                          </tr>     --%>
            <tr>
                <td style="font-size:20px; color:Black">
                    公司业务:
                </td>
            </tr>
            <tr>
                <td style="font-size:15px">
                    勘察、评价、设计、施工，是目前云南省防雷设计、施工资质最高的公司之一。
                </td>
            </tr>
            <tr style="height:10px"></tr>
            <tr>
                <td style="font-size:20px; color:Black">
                    人力资源:
                </td>
            </tr>
            <tr>
                <td style="font-size:15px">
                    公司汇集了一批高级工程师、工程师及高中级技术人员，在多年的实践中了丰富的勘察、设计、施工经验，能够整合国内外先进防雷科技成果应用于防雷工程，并为客户提供性能可靠、经济适用的防雷设备。
                </td>
            </tr>
            <tr style="height:10px"></tr>
            <tr>
                <td style="font-size:20px; color:Black">
                    服务范围:
                </td>
            </tr>
            <tr>
                <td style="font-size:15px">
                    高层建筑、工业厂区、水塔、物资仓库、易燃易爆产品场所、露天堆场、油库、大型公共场所、邮电通讯和广播电视设施、电站（厂）、变电站、电网、计算机设备及其场地、微电子设备及其他易受雷击的建（构）筑物等防雷设置（设施）的勘察、设计与安装。
                </td>
            </tr>
            <tr style="height:10px"></tr>
            <tr>
                <td style="font-size:20px; color:Black">
                    发展前景:
                </td>
            </tr>
            <tr>
                <td style="font-size:15px">
                    公司通过不断地探索创新，正在进入新的发展时期——集合现代防雷的最新研究成果，形成集防雷设备实验场所、防雷系统管理工程和防雷系统综合评价体系为一体的大型防雷企业。
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
