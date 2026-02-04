<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | JobApp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="/home">JobApp</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link active" href="/login">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5 pt-4">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h2 class="card-title text-center mb-3">Welcome back</h2>
                    <p class="text-center mb-4">Sign in to manage your job posts and applications.</p>

                    <c:if test="${not empty loginMessage}">
                        <div class="alert alert-success text-center" role="alert">
                            ${loginMessage}
                        </div>
                    </c:if>

                    <form action="/login" method="post">
                        <div class="mb-3">
                            <label class="form-label" for="email">Email address</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Sign In</button>
                        </div>
                    </form>
                    <div class="text-center mt-3">
                        <small class="text-muted">New here? <a href="/addjob" class="text-decoration-none">Create a job post</a></small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
