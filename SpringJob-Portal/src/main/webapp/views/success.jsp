<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Success - JobApp</title>
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
    <div class="container mt-5 text-center">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Transmission Successful!</h4>
            <p>The job post has been successfully broadcast to the network.</p>
        </div>
        <div class="mt-4">
            <a href="/viewalljobs" class="btn btn-primary">View All Jobs</a>
        </div>
    </div>
</body>
</html>