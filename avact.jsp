<%@page import="Efficient.BlockchainDemo"%>
<%@page import="java.util.Random"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String email=request.getParameter("email");
            String vname=request.getParameter("vname");
            String descri=request.getParameter("description");
         //   String type=request.getParameter("type");
            String image=request.getParameter("image");
             String vlink=request.getParameter("vlink");
//             BlockchainDemo bdemo = new BlockchainDemo();
//         int bk = bdemo.blockchainkey(username);
//         System.out.println("ddddddddddddddddddddddddddddddddddd" + bk);
          int id=0;
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into av(id,vname,email,descri,image,status,status1,status2,status3,status4,vlink) values(?,?,?,?,?,?,?,?,?,?,?)");
        pst2.setInt(1,id);
	pst2.setString(2,vname);
        pst2.setString(3,email); 
        pst2.setString(4,descri);   
        pst2.setString(5,image); 
        pst2.setString(6,"pending");
        pst2.setString(7,"pending"); 
        pst2.setString(8,"pending");   
        pst2.setString(9,"pending");
        pst2.setString(10,"pending");
        pst2.setString(11,vlink); 
       
      
        
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("av.jsp?m1=success"); 
      }
      else{
          response.sendRedirect("av.jsp?m2=failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

