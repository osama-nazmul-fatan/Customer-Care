<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import ="CustomaCare.CutomerBackend"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint status</title>
    </head>
    <body>
        <br/>
        
        
       <form  method="GET">
            <h3>Enter the complaint ID to check the status of the complaint:</h3><br/>

       <INPUT TYPE="number" NAME="C_ID" required>
       <br/><br/>
        <INPUT TYPE="SUBMIT">
        </form>
        <br/><br/>
        <%
            int s=0;
            if(request.getParameter("C_ID")!=null)
            {    s = Integer.parseInt(request.getParameter("C_ID"));
            
            CutomerBackend c = new CutomerBackend();
            String z = session.getAttribute("u").toString();            
            String s1 = c.status_dev(s,z);
            out.println(s1);
            
            }
            
          %>
        
          <br/>
          <%
            if(request.getParameter("C_ID")!=null)
            {   
             CutomerBackend c = new CutomerBackend();
             String z = session.getAttribute("u").toString();   
             String s1 = c.status_cat(s,z);
                out.println(s1);
            
            }
            
          %>
          <br/>
           <%
            if(request.getParameter("C_ID")!=null)
            {   
             CutomerBackend c = new CutomerBackend();
             String z = session.getAttribute("u").toString();   
             String s1 = c.status_comp(s,z);
                out.println(s1);
            
            }
            
          %>
          <br/>
          <%
            if(request.getParameter("C_ID")!=null)
            {   
             CutomerBackend c = new CutomerBackend();
             String z = session.getAttribute("u").toString();   
             String s1 = c.status_status(s,z);
                out.println(s1);
            
            }
            
          %>
          <br/><br/>
    </body>
</html>