﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ch5-2.aspx.vb" Inherits="ch5_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        請選修您喜歡的課程<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>資料庫系統</asp:ListItem>
            <asp:ListItem>資料結構</asp:ListItem>
            <asp:ListItem>程式設計</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定選課" />
        <br />
        <br />
        您已選的課程如下：<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="120px" TextMode="MultiLine"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
