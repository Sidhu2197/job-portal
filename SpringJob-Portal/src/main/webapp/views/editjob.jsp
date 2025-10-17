<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Job - JobApp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/style.css"> <%-- Corrected Path --%>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">JobApp</a>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/viewalljobs">All Jobs</a></li>
            </ul>
        </div>
    </nav>
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title text-center mb-4">Edit Job Post</h2>
                        <form:form action="/updateJob" method="post" modelAttribute="jobPost">
                            <form:hidden path="postId"/>
                            <div class="mb-3">
                                <label for="postProfile" class="form-label">Job Profile</label>
                                <form:input path="postProfile" type="text" class="form-control" id="postProfile"/>
                                <form:errors path="postProfile" cssClass="text-danger"/>
                            </div>
                            <div class="mb-3">
                                <label for="postDesc" class="form-label">Description</label>
                                <form:textarea path="postDesc" class="form-control" id="postDesc" rows="3"/>
                                <form:errors path="postDesc" cssClass="text-danger"/>
                            </div>
                            <div class="mb-3">
                                <label for="reqExperience" class="form-label">Required Experience (Years)</label>
                                <form:input path="reqExperience" type="number" class="form-control" id="reqExperience"/>
                                <form:errors path="reqExperience" cssClass="text-danger"/>
                            </div>
                            <div class="mb-3">
                                <label for="postTechStack" class="form-label">Tech Stack</label>
                                <form:input path="postTechStack" type="text" class="form-control" id="postTechStack"/>
                                <form:errors path="postTechStack" cssClass="text-danger"/>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Update Job</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>