
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Add Notes</title>
     <%@include file="all_js_css.jsp"%>
  </head>
  <body>


  <!-- if we do container fluid  then nav bar expand and add p-0 and
  m-0 then the cover left to right whole -->


   <div class="container ">
   <%@include file="navbar.jsp"%>

  <br>

  <h1>Please fill your note details </h1>

  <!-- This is add forms -->
  <form action="SaveNoteServlet" method="post">
    <div class="form-group">
      <label for="exampleInputEmail1">Note Title</label>
      <input type="text" required
       name="title"
       class="form-control"
        id="title"
        aria-describedby="emailHelp"
        placeholder="Enter here"/>

    </div>
    <div class="form-group">
      <label for="content">Note Content</label>
     <textarea
     name="content"
     id="content" required
      placeholder="Enter your Content here"
      class="form-control"
      style="height:300px;"
      ></textarea>
    </div>
    <div class="container text-center">
    <button type="submit" class="btn btn-primary" value="Save Note">Add</button>
  </div>
  </form>

   </div>


  </body>
</html>
