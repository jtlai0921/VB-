﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ch9-6.aspx.vb" Inherits="ch9_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/myweb/學生資料庫.mdb" DeleteCommand="DELETE FROM [學生成績表] WHERE [序號] = ?" 
        InsertCommand="INSERT INTO [學生成績表] ([序號], [學號], [姓名], [性別], [資料庫成績], [系統分析成績], [程式設計成績], [計算機概論成績]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [學生成績表]" 
        UpdateCommand="UPDATE [學生成績表] SET [學號] = ?, [姓名] = ?, [性別] = ?, [資料庫成績] = ?, [系統分析成績] = ?, [程式設計成績] = ?, [計算機概論成績] = ? WHERE [序號] = ?">
        <DeleteParameters>
            <asp:Parameter Name="序號" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="序號" Type="Int32" />
            <asp:Parameter Name="學號" Type="String" />
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性別" Type="String" />
            <asp:Parameter Name="資料庫成績" Type="Int32" />
            <asp:Parameter Name="系統分析成績" Type="Int32" />
            <asp:Parameter Name="程式設計成績" Type="Int32" />
            <asp:Parameter Name="計算機概論成績" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="學號" Type="String" />
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性別" Type="String" />
            <asp:Parameter Name="資料庫成績" Type="Int32" />
            <asp:Parameter Name="系統分析成績" Type="Int32" />
            <asp:Parameter Name="程式設計成績" Type="Int32" />
            <asp:Parameter Name="計算機概論成績" Type="Int32" />
            <asp:Parameter Name="序號" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1">
    </asp:GridView>
    </form>
</body>
</html>
