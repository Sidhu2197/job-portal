<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Jobs - JobApp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/style.css"> <%-- Corrected Path --%>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">JobApp</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/viewalljobs">All Jobs</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-5">
        <h2 class="mb-4 text-center" style="color: var(--primary-color);">Available Job Postings</h2>
        <div class="row">
            <c:forEach var="jobPost" items="${jobPosts}">
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">${jobPost.postProfile}</h5>
                            <p class="card-text"><strong>Experience:</strong> ${jobPost.reqExperience} years</p>
                            <p class="card-text flex-grow-1"><strong>Tech Stack:</strong> ${jobPost.postTechStack}</p>
                            <div class="mt-auto">
                                <a href="/edit?postId=${jobPost.postId}" class="btn btn-primary">Edit</a>
                                <a href="/delete?postId=${jobPost.postId}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this job posting?');">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>