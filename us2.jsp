<%@page import="Efficient.BlockchainDemo"%>
<%@page import="java.util.Random"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
   String id=request.getParameter("id");
            String email=request.getParameter("email");
            String vname=request.getParameter("vname");
            String image=request.getParameter("image");
        String user=session.getAttribute("email").toString();
       //   int id=0;
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("update av set  status4='"+user+"'  where id='"+id+"' and vname='"+vname+"' and email='"+email+"' ");
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("us.jsp?m1=success"); 
      }
      else{
          response.sendRedirect("us.jsp?m2=failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

