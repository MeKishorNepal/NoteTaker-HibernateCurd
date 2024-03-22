
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>NoteTaker:Home Page</title>
    <%@include file="all_js_css.jsp"%>
  </head>
  <body>

   <div class="container-fluid p-0 m-0">
   <%@include file="navbar.jsp"%>
   <h1>Edit your note</h1>
   <br>
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=FactoryProvider.getFactory().openSession();
    Note note=(Note) s.get(Note.class,noteId);
    %>

    <form action="updateServlet" method="post">
    <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
        <div class="form-group">
          <label for="exampleInputEmail1">Note Title</label>
          <input type="text" required
          name="title"
           class="form-control"
            id="title"
            aria-describedby="emailHelp"
            placeholder="Enter here"
            value="<%=note.getTitle() %>"
            />

        </div>
        <div class="form-group">
          <label for="content">Note Content</label>
         <textarea
         name="content"
         id="content" required
          placeholder="Enter your Content here"
          class="form-control"
          style="height:300px;"><%=note.getContent() %>
          </textarea>
        </div>
        <div class="container text-center">
        <button type="submit" class="btn btn-success" value="Save Note">Save your note</button>
      </div>
      </form>


   </div>


  </body>
</html>