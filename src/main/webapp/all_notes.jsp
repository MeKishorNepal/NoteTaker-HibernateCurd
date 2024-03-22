<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="com.entities.Note" %>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>All notes:Note Taker</title>
     <%@ include file="all_js_css.jsp"%>
  </head>
  <body>

    <div class="container">
       <%@ include file="navbar.jsp"%>
       <br>
       <h1 class="text-uppercase">All Notes:</h1>

       <div class="row">
       <div class="col-12">
        <%
                 Session s=FactoryProvider.getFactory().openSession();
                 Query q=s.createQuery("from Note");
                 List<Note> list=q.list();

                 for(Note note:list) {
                 %>
                 <!-- here program will repeat-->

                 <div class="card mt-3" >
                   <img class="card-img-top pl-4 pt-4 mx-auto" style="max-width:100px;" src="images/notes.png" alt="Card image cap">
                   <div class="card-body px-5">
                     <h5 class="card-title"><%=note.getTitle() %></h5>
                     <p class="card-text">
                     <%=note.getContent()%>
                     </p>
                     <p style="color:blue; text:bold;">Note Update Date:<%=note.getAddedDate()%></p>
                     <div class="container text-center mt-3">
                     <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
                     <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-success ">update</a>
                     </div>
                   </div>
                 </div>

               <%  }

                 s.close();
              %>

       </div>

       </div>

    </div>
  </body>
</html>
