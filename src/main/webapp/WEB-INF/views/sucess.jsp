<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Operation Success - Student Management System</title>

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>
:root{
    --slate-50:#f8fafc;
    --slate-300:#cbd5e1;
    --slate-600:#475569;
    --slate-700:#334155;
    --slate-900:#0f172a;
    --border:#e2e8f0;
    --brand:#0369a1;
    --success:#10b981;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Inter',sans-serif;
}

body{
    background:var(--slate-50);
    min-height:100vh;
    display:flex;
    flex-direction:column;
}

.top-bar{
    height:65px;
    background:#fff;
    border-bottom:1px solid var(--border);
    display:flex;
    align-items:center;
    padding:0 40px;
}

.brand{
    display:flex;
    align-items:center;
    gap:12px;
}

.brand-logo{
    width:35px;
    height:35px;
    background:var(--slate-900);
    color:#fff;
    display:flex;
    justify-content:center;
    align-items:center;
    border-radius:6px;
}

.container{
    flex:1;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

.card{
    width:520px;
    background:#fff;
    border:1px solid var(--border);
    border-radius:10px;
    padding:40px;
    text-align:center;
    box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.icon{
    width:65px;
    height:65px;
    margin:auto;
    border-radius:50%;
    background:#ecfdf5;
    color:var(--success);
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:28px;
    margin-bottom:20px;
}

h2{
    margin-bottom:15px;
    color:var(--slate-900);
}

.message{
    background:#f8fafc;
    border:1px solid var(--border);
    border-radius:8px;
    padding:18px;
    margin-bottom:30px;
    text-align:left;
    color:var(--slate-700);
}

.buttons{
    display:flex;
    gap:15px;
}

.btn{
    flex:1;
    text-decoration:none;
    padding:12px;
    border-radius:6px;
    text-align:center;
    font-weight:600;
    transition:.3s;
}

.outline{
    border:1px solid var(--slate-300);
    color:var(--slate-700);
    background:#fff;
}

.outline:hover{
    background:#f1f5f9;
}

.solid{
    background:var(--slate-900);
    color:#fff;
}

.solid:hover{
    background:var(--brand);
}

.footer{
    background:#fff;
    border-top:1px solid var(--border);
    text-align:center;
    padding:15px;
    color:var(--slate-600);
    font-size:13px;
}
</style>

</head>

<body>

<div class="top-bar">
    <div class="brand">
        <div class="brand-logo">
            <i class="fa-solid fa-layer-group"></i>
        </div>
        <h3>Student Management System</h3>
    </div>
</div>

<div class="container">

    <div class="card">

        <div class="icon">
            <i class="fa-solid fa-circle-check"></i>
        </div>

        <h2>Operation Successful</h2>

        <div class="message">
            ${student}
        </div>

        <div class="buttons">
            <a href="/" class="btn outline">
                <i class="fa-solid fa-house"></i> Dashboard
            </a>

            <a href="/students" class="btn solid">
                <i class="fa-solid fa-users"></i> View Students
            </a>
        </div>

    </div>

</div>

<div class="footer">
    © 2026 Student Management System
</div>

</body>
</html>