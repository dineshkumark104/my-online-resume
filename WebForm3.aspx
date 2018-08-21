<%@ Page Title="" Language="C#" MasterPageFile="~/master_resume.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="resume.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="<<< PREVIOUS PAGE" /></p>
    <p>
        
    </p>
 <table>
    <tr>
        <td></td>
        <td style="width: 100px"> <asp:Image src="usficon.jpg" ID="Image1" runat="server" Height="80px" Width="90px"  /> </td>
         <td><table><tr><td>&nbsp;&nbsp;<h3><asp:Label ID="label2" runat="server"></asp:Label></h3></td></tr>
                    <tr> <td>&nbsp;&nbsp;<asp:Label ID="label1" runat="server"></asp:Label></td></tr>
                    <tr> <td>&nbsp;&nbsp;Graduated:&nbsp;<asp:Label ID="label3" runat="server"></asp:Label></td></tr>
            </table>  </td>  
    </tr>
     <tr><td>&nbsp;</td></tr>
        <tr>
            <td></td>
            <td style="width: 100px"><asp:Image src="pec.jpg" ID="Image2" runat="server" Height="80px" Width="90px" /></td> 
             <td><table><tr><td>&nbsp;&nbsp;&nbsp;<h3><asp:Label ID="label5" runat="server"></asp:Label></h3></td></tr>
                    <tr> <td> &nbsp;&nbsp;&nbsp;<asp:Label ID="label4" runat="server"></asp:Label></td></tr>
                    <tr> <td> &nbsp;&nbsp;&nbsp;Graduated:&nbsp;<asp:Label ID="label6" runat="server"></asp:Label></td></tr>
           </table>  </td>  
        </tr>
    </table> 
    <table> <tr>
     <td>&nbsp;</td></tr>
     </table>
   
</asp:Content>
