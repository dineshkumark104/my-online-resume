<%@ Page Title="" Language="C#" MasterPageFile="~/master_resume.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="resume.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p></p>
     <p> <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="<<< PREVIOUS PAGE" /> </p>
    <h3>Skills:</h3>
    <table>
        <tr>
     <td> Programing Language: </td>
     <td>&nbsp;</td>
     <td><asp:Label ID="label1" runat="server"></asp:Label></td> 
        </tr>
     <tr>
     <td>Operating System:</td>
     <td>&nbsp;</td>
     <td><asp:Label ID="label2" runat="server"></asp:Label></td></tr>
         <tr>
     <td>Database Management System:</td> 
     <td>&nbsp;</td>
     <td><asp:Label ID="label3" runat="server"></asp:Label></td>
         </tr>
    </table>
    
    <table> <tr>
     <td>&nbsp;</td></tr>
     </table>

    <h3>Professional Experience</h3>
    <table>
        <tr><td><asp:Image src="verum.png" ID="Image3" runat="server" Height="98px" Width="90px" /> </td>
            <td>&nbsp;</td>
           <td> 
                <table> <tr><td><asp:Label ID="label4" runat="server"></asp:Label></td> </tr> 
                 <tr><td><asp:Label ID="label5" runat="server"></asp:Label></td></tr>
                 <tr><td> <asp:Label ID="label6" runat="server"></asp:Label> - <asp:Label ID="label7" runat="server"></asp:Label></td></tr>
                 <tr><td>&nbsp; </td></tr>
                </table>
           </td>
         </tr>    
    </table>
    <table> <tr>
     <td>&nbsp;</td></tr>
     </table>
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="NEXT PAGE >>>" />    
</asp:Content>
