<%-- 
    Document   : display
    Created on : 31-Oct-2014, 16:02:22
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Membership Form</title>
    </head>
    <body>
        <h1>Membership Form</h1>
        <% 
            String FirstName = request.getParameter("first");
            String LastName = request.getParameter("last");
            String emailAddress = request.getParameter("email");
            String Gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
         %>
         <table border="1">
             <tbody>
                 <tr>
                     <td>First Name:</td>
                     <td><%=FirstName%></td>
                 </tr>
                 <tr>
                     <td>Last Name:</td>
                     <td><%=LastName%></td>
                 </tr>
                 <tr>
                     <td>Email Address:</td>
                     <td><%=emailAddress%></td>
                 </tr>
                 <tr>
                     <td>Gender:</td>
                     <td><%=Gender%></td>
                 </tr>
                 <tr>
                     <td>Date Of Birth</td>
                     <td><%=dob%></td>
                 </tr>
             </tbody>
         </table>

    </body>
</html>
