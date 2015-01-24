<%
    String akses = (String)session.getAttribute("sessionakses");
    
    if(akses.equals("admin")){
        if(request.getParameter("link").equals("adm")){
            %>
            <%@include file="module/admin/admin.jsp" %> 
            <%
        }
        else if(request.getParameter("link").equals("test")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
        }
    }
    
    if(akses.equals("kajur")){
        if(request.getParameter("link").equals("kajur")){
            %>
            <%@include file="module/kajur/kajur.jsp" %> 
            <%
            }
    
        else if(request.getParameter("link").equals("test")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
            }
    }
    
    if(akses.equals("mahasiswa")){
        if(request.getParameter("link").equals("mhs")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
            }
    
        else if(request.getParameter("link").equals("test")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
            }
    }
%>
