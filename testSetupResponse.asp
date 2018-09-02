<!--#include file="index.asp" -->
<% Sub BodyContent %>
    <%
        set conn=Server.CreateObject("ADODB.Connection")
        conn.Provider="Microsoft.Jet.OLEDB.4.0"
        conn.Open "C:\inetpub\wwwroot\hospital\testdb.mdb"

        testName= Request.Form("testName") 
        testType= Request.Form("testType") 
        unitPrice= Request.Form("unitPrice") 

        sql="INSERT INTO Test (TestName,TestType,UnitPrice) VALUES ('"&testName&"','"&testType&"',"&unitPrice&")"

        conn.Execute sql,recaffected
        Response.Write("<h3>" & recaffected & " record added</h3>")
        conn.close
    %>
<% End Sub %>