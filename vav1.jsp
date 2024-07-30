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
             BlockchainDemo bdemo = new BlockchainDemo();
        int bk = bdemo.blockchainkey(vname);
         System.out.println("ddddddddddddddddddddddddddddddddddd" + bk);
       //   int id=0;
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("update av set status='"+bk+"', status1='accpted' where id='"+id+"' and vname='"+vname+"' and email='"+email+"' ");
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("svv.jsp?m1=success"); 
      }
      else{
          response.sendRedirect("svv.jsp?m2=failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

