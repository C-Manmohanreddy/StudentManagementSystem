<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard - Student Management System</title>

<!-- Professional Enterprise Typography & Iconography -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>
    :root {
        --slate-50: #f8fafc;
        --slate-100: #f1f5f9;
        --slate-200: #e2e8f0;
        --slate-300: #cbd5e1;
        --slate-600: #475569;
        --slate-700: #334155;
        --slate-900: #0f172a;
        --brand: #0284c7;
        --brand-dark: #0369a1;
        --border: #e2e8f0;
        --card-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.05), 0 1px 2px -1px rgba(0, 0, 0, 0.05);
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Inter', sans-serif;
    }

    body {
        background-color: var(--slate-50);
        color: var(--slate-900);
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }

    /* APP TOP BAR */
    .top-bar {
        background: #ffffff;
        border-bottom: 1px solid var(--border);
        height: 64px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 40px;
        position: sticky;
        top: 0;
        z-index: 100;
    }

    .brand-section {
        display: flex;
        align-items: center;
        gap: 12px;
    }

    .brand-logo {
        background: var(--slate-900);
        color: #ffffff;
        width: 32px;
        height: 32px;
        border-radius: 6px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 16px;
    }

    .brand-section h1 {
        font-size: 16px;
        font-weight: 600;
        letter-spacing: -0.2px;
    }

    .brand-badge {
        font-size: 11px;
        background: var(--slate-100);
        color: var(--slate-700);
        padding: 2px 8px;
        border-radius: 4px;
        font-weight: 500;
        border: 1px solid var(--slate-200);
    }

    /* MAIN CONTAINER */
    .app-container {
        max-width: 1200px;
        width: 100%;
        margin: 0 auto;
        padding: 60px 40px;
        flex: 1;
    }

    /* PAGE HEADER SYSTEM */
    .page-header {
        text-align: center;
        max-width: 700px;
        margin: 0 auto 50px auto;
    }

    .page-header h2 {
        font-size: 32px;
        font-weight: 700;
        letter-spacing: -0.8px;
        color: var(--slate-900);
        margin-bottom: 12px;
    }

    .page-header p {
        color: var(--slate-600);
        font-size: 16px;
        line-height: 1.6;
    }

    /* CARDS ARCHITECTURE */
    .card-container {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 24px;
    }

    @media (max-width: 968px) {
        .card-container { grid-template-columns: 1fr; }
        .app-container { padding: 30px 20px; }
    }

    .card {
        background: #ffffff;
        border: 1px solid var(--border);
        border-radius: 8px;
        box-shadow: var(--card-shadow);
        padding: 32px 24px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        transition: transform 0.15s ease, border-color 0.15s ease;
    }

    .card:hover {
        border-color: var(--brand);
        transform: translateY(-2px);
    }

    .card-icon {
        width: 44px;
        height: 44px;
        background: var(--slate-50);
        color: var(--brand);
        border: 1px solid var(--slate-200);
        border-radius: 6px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 18px;
        margin-bottom: 20px;
    }

    .card h3 {
        font-size: 18px;
        font-weight: 600;
        color: var(--slate-900);
        margin-bottom: 10px;
    }

    .card p {
        font-size: 14px;
        color: var(--slate-600);
        line-height: 1.5;
        margin-bottom: 28px;
    }

    .card a {
        text-decoration: none;
        padding: 10px 16px;
        border-radius: 6px;
        font-size: 13px;
        font-weight: 500;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
        transition: all 0.1s ease;
        background: var(--slate-900);
        color: #ffffff;
    }

    .card a:hover {
        background: var(--brand-dark);
    }

    /* FOOTER METADATA */
    .app-footer {
        border-top: 1px solid var(--border);
        padding: 24px 40px;
        margin-top: 60px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 12px;
        color: var(--slate-600);
        background: #ffffff;
    }
</style>
</head>
<body>

<!-- Application Global Header Frame -->
<div class="top-bar">
    <div class="brand-section">
        <div class="brand-logo"><i class="fa-solid fa-layer-group"></i></div>
        <h1>Student Management Console</h1>
        <span class="brand-badge">Enterprise v2.4</span>
    </div>
</div>

<!-- Primary Dashboard Canvas -->
<div class="app-container">

    <!-- Center Module Welcome System -->
    <div class="page-header">
        <h2>Gateway Control Panel</h2>
        <p>Manage data models, compile academic registrations, look up indices, and update configuration logs securely.</p>
    </div>

    <!-- 3 Column Action Cards -->
    <div class="card-container">
        <div class="card">
            <div>
                <div class="card-icon"><i class="fa-solid fa-user-plus"></i></div>
                <h3>Register Student</h3>
                <p>Initialize a raw master record inside the directory with metadata parameters.</p>
            </div>
            <a href="students/register">Begin Registration <i class="fa-solid fa-arrow-right"></i></a>
        </div>

        <div class="card">
            <div>
                <div class="card-icon"><i class="fa-solid fa-database"></i></div>
                <h3>View Students</h3>
                <p>Access directory logs with operations to update parameters or purge index files.</p>
            </div>
            <a href="students/list">Examine Directory <i class="fa-solid fa-arrow-right"></i></a>
        </div>

        <div class="card">
            <div>
                <div class="card-icon"><i class="fa-solid fa-magnifying-glass"></i></div>
                <h3>Search Student</h3>
                <p>Run immediate parameterized searches against naming structures or email fields.</p>
            </div>
            <a href="students/search">Launch Query Index <i class="fa-solid fa-arrow-right"></i></a>
        </div>
    </div>

</div>

<!-- System Footer Meta Block -->
<div class="app-footer">
    <div>Status: <strong>Operational</strong></div>
    <div>Institutional Records Framework Group &copy; 2026</div>
</div>

</body>
</html>