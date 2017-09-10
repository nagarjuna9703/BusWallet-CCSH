<%@page import="java.sql.*,java.util.*"%>
<%
 String name=request.getParameter("name");
 String emailid=request.getParameter("email");
 String pass=request.getParameter("pass");
 String phone=request.getParameter("phone");
   
   int count=0;
   try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
        PreparedStatement ps= conn.prepareStatement("insert into bususer(name,emailid,phone,pass) values(?,?,?,?)");
        ps.setString(1,name);
        ps.setString(2,emailid);
        ps.setString(3,phone);
        ps.setString(4,pass);
        
        count= ps.executeUpdate();
      if(count>0)
      {
        response.sendRedirect("Homepagebus.jsp");
    }
      }catch(Exception e){
        e.printStackTrace();
      }
   
   %>