<%@page import="java.sql.*, java.util.*"%>
<%
   String username=request.getParameter("txtusername");
   String password=request.getParameter("txtpassword");
   //out.println(username+"\t"+password);
   try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
        Statement stmt= conn.createStatement();
        ResultSet rs= stmt.executeQuery("select * from bususer");
        int count=0;
        //boolean flag=false;
        while(rs.next())
       { 
        if(username.equals(rs.getString("emailid"))&&password.equals(rs.getString("pass")))
         {   count=1;
             break;
         }
    
       }
       
       if(count==1)
       {
        
        String user= rs.getString("name");
        String id = String.valueOf(rs.getInt("id"));
        session.setAttribute("username",user);
        session.setAttribute("userid",id);
         %>
         <script>
              alert("Succesfully Loggedin...");
         </script>
      <%@ include file="Pagelogbus.jsp" %>
      <%
         }
       else
       {
        %>
        <script>
          alert("invalid credentials...");  
        </script>
        <%@ include file="Homepagebus.jsp" %>
    <%   }
      
     }catch(Exception e)
      {
        e.printStackTrace();
      }
    
%>