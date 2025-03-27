<%@page import="com.org.dto.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">MyCompany</a>
        <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <% User user12= (User) session.getAttribute("userobj"); %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="profile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ViewUser.jsp">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ChangePwd.jsp">Change-Password</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<style>
    /* Fix navbar height issue */
    .navbar {
        padding: 10px 20px; /* Set padding for the navbar */
        height: 60px; /* Adjust navbar height */
    }

    /* Hover effect for navbar links */
    .navbar-nav .nav-item .nav-link {
        transition: all 0.3s ease; /* Smooth transition for hover effect */
    }

    .navbar-nav .nav-item .nav-link:hover {
        background-color: #0056b3; /* Darker blue on hover */
        border-radius: 5px; /* Slightly rounded corners for a nice effect */
        color: #fff; /* Ensure text remains white on hover */
    }
</style>
