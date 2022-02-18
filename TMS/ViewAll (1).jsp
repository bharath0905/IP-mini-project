
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>JSP Page</title>
 
   </head>
  
  <body bgcolor = aquamarine>
  
   <table border="1">
     
   <tr>
   
  <th>s.no</th>
       
  <th>teachername</th>
      
  <th>available</th>
            
  <th>dept</th>
             
 <th>salary</th>
     
   </tr>
     
<%
    try{
           
 Class.forName("com.mysql.jdbc.Driver");
           
 Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/teachers","root","dpk");
           
 PreparedStatement st = con.prepareStatement("Select * from teacher");
 
            
  ResultSet rs = st.executeQuery();
          
while(rs.next())
{
     
  %>
       
<tr>
     
<td><%=rs.getString("sno")%></td>
      
<td><%=rs.getString("teachername")%></td>
        
<td><%=rs.getString("available")%></td>
       
<td><%=rs.getString("dept")%></td>
            
<td><%=rs.getString("salary")%></td>
       
  </tr>
  
 <%
            
 }
 }
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>
   

</table>
   
</body>

</html>
