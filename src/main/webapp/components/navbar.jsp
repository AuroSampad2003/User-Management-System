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
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="register.jsp">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="login.jsp">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<style>
  /* Hover effect for Register and Login links */
  .navbar-nav .nav-item .nav-link {
    transition: all 0.3s ease; /* Smooth transition for hover effect */
  }

  .navbar-nav .nav-item .nav-link:hover {
    background-color: #0056b3; /* Darker blue on hover */
    color: white; /* Change text color to white on hover */
    border-radius: 5px; /* Slightly rounded corners for a smooth effect */
    text-decoration: none; /* Remove underline on hover */
  }
</style>
