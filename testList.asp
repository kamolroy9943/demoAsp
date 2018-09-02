<!--#include file="index.asp" -->
<% Sub BodyContent %>
<table class="table table-bordered table-hover table-striped">
    <thead class="thead-dark">
        <th>Test Name</th>
        <th>Test Type</th>
        <th>Unit Price</th>
    </thead>
    <%
        <!-- -------------------------------------------------------------------   //code of load data -->
        set conn=Server.CreateObject("ADODB.Connection")
        conn.Provider="Microsoft.Jet.OLEDB.4.0"
        conn.Open "C:\inetpub\wwwroot\hospital\testdb.mdb"

        set rs=Server.CreateObject("ADODB.recordset")
        rs.Open "Select TestName,TestType,UnitPrice FROM Test", conn
        <!-- ------------------------------------------------------------------ -->
        Do While Not rs.EOF
            Response.Write "<TR><TD>" & rs("TestName") & "</TD>"
            Response.Write "<TD>" & rs("TestType") & "</TD>"
            Response.Write "<TD>" & rs("UnitPrice") & "</TD>"
        rs.MoveNext

        Loop
        rs.Close
        conn.Close
         
    %>
</table>
<% End Sub %>