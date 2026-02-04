<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Application Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/style.css"> <%-- Corrected Path --%>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">JobApp</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="/home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="text-center mb-5">
            <h1 class="display-4" style="color: var(--primary-color);">Job Application Portal</h1>
            <p class="lead">The future of career opportunities starts here.</p>
        </div>
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="card h-100 text-center">
                    <div class="card-body d-flex flex-column justify-content-center">
                        <h5 class="card-title">Explore Open Positions</h5>
                        <p class="card-text">Scan the horizon for all available job opportunities.</p>
                        <a href="/viewalljobs" class="btn btn-primary mt-auto">View Jobs</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4">
                <div class="card h-100 text-center">
                    <div class="card-body d-flex flex-column justify-content-center">
                        <h5 class="card-title">Post a New Job</h5>
                        <p class="card-text">Broadcast a new opportunity to the talent network.</p>
                        <a href="/addjob" class="btn btn-primary mt-auto">Add Job</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
