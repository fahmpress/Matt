<%
    String cek=request.getParameter("menu");
     if(cek.equals("mhs")){
        %>
        <%@include file="module/mhs/mhs.jsp" %> 
        <%
        }
    
     else if(cek.equals("calendar")){
            %>
            <%@include file="module/mhs/calendar.jsp" %> 
            <%
           } 
            
           else{
           out.println("");
           }

           %>
