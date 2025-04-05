<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <title>Dashboard - SB Admin</title>
                <link rel="stylesheet" href="/admin/css/style.css">
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            </head>

            <body>
                <h3>Create Blog</h3>

                <form:form method="post" action="/admin/blog/create" modelAttribute="blog">

                    <label class="form-label">Title:</label>
                    <form:input type="text" path="title" />

                    <label class="form-label">Description:</label>
                    <form:input type="text" path="description" />

                    <!-- <label class="form-label">Image:</label>
                    <form:input type="text" path="imageUrl" /> -->

                    <label class="form-label">Content:</label>
                    <form:input type="text" path="content" />

                    <button type="submit">Create</button>
                </form:form>
            </body>

            </html>