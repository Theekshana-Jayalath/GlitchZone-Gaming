<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Dashboard - Gaming Site</title>
   <link rel="stylesheet" href="./admin.css">
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"></script>
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      lucide.createIcons();
    });
  </script>
  
  <style>
  	 table {
    width: 95%;
    color:#000;
    border-collapse: collapse;
    background-color: rgb(166, 192, 240);
    box-shadow: 0 0 10px rgba(2, 38, 80, 0.1);
    margin:30px 0 0 50px;
  }

  th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #050542;
    color: rgb(255, 255, 255);
  }

  tr:hover {
    background-color: #949494;
  }

  .btn {
    padding: 6px 12px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    color: white;
  }

  .update-btn {
    background-color: #0962ac;
  }

  .update-btn:hover{
    background-color: #002646;
  }

  .delete-btn {
    background-color: #a01b12;
  }

  .delete-btn:hover {
    background-color: #4e0904;
  }
section.grid img {
  transition: transform 0.3s ease;
}

section.grid img:hover {
  transform: scale(1.05);
}
  </style>
</head>
<body class="bg-gray-100 text-gray-800">

  <div class="flex h-screen">

    <!-- Sidebar -->
    <aside class="w-64 bg-gray-900 text-white p-6 space-y-6">
      <h1 class="text-2xl font-bold">Admin Panel</h1>
      <nav class="flex flex-col space-y-4">
        <a href="ProfilesView.jsp" class="flex items-center gap-2 hover:text-gray-300"><i data-lucide="users" class="w-5 h-5"></i> Manage Users</a>
        <a href="mgDisplay.jsp" class="flex items-center gap-2 hover:text-gray-300"><i data-lucide="gamepad-2" class="w-5 h-5"></i> Manage Games</a>
        <a href="EventDisplay.jsp" class="flex items-center gap-2 hover:text-gray-300"><i data-lucide="gamepad-2" class="w-5 h-5"></i>Manage Event</a>
        <a href="feedbackDisplay.jsp" class="flex items-center gap-2 hover:text-gray-300"><i data-lucide="message-circle" class="w-5 h-5"></i> Manage Feedback</a>
      </nav>
    </aside>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">

      <!-- Topbar -->
      <header class="bg-white shadow px-6 py-4 flex justify-between items-center">
        <h2 class="text-xl font-semibold">Dashboard</h2>
        <div class="flex items-center gap-4">
          <span>Welcome, <strong>Admin</strong></span>
          <button class="flex items-center gap-1 bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600">
            <i data-lucide="log-out" class="w-4 h-4"></i> <a href="AdminLogin.jsp">Logout</a>
          </button>
        </div>
      </header>

      <!-- Dashboard Content -->
      <main class="p-6 space-y-12 overflow-y-auto">

<!-- Admin Image Cards Section -->
<section class="grid grid-cols-1 md:grid-cols-2 gap-8" >
  <!-- Box 1 -->
  <div class="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center">
    <img src="./images/A1.jpg" alt="Admin Profile" class="w-40 h-40 rounded-full mb-6 object-cover">
    <h3 class="text-2xl font-bold text-gray-800">Admin Profile</h3>
  </div>

  <!-- Box 2 -->
  <div class="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center">
    <img src="./images/A2.jpg" alt="Manage Users" class="w-40 h-40 mb-6 object-contain">
    <h3 class="text-2xl font-bold text-gray-800">Manage Users</h3>
  </div>

  <!-- Box 3 -->
  <div class="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center">
    <img src="./images/A3.jpg" alt="Manage Games" class="w-40 h-40 mb-6 object-contain">
    <h3 class="text-2xl font-bold text-gray-800">Manage Games</h3>
  </div>

  <!-- Box 4 -->
  <div class="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center">
    <img src="./images/A4.jpg" alt="User Feedback" class="w-40 h-40 mb-6 object-contain">
    <h3 class="text-2xl font-bold text-gray-800">User Feedback</h3>
  </div>
</section>



       

      
      </main>
    </div>
  </div>

</body>
</html>