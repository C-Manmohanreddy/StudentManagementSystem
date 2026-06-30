<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management Console</title>

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

    .nav-menu {
        display: flex;
        gap: 8px;
        height: 100%;
        align-items: center;
    }

    .nav-item {
        text-decoration: none;
        color: var(--slate-700);
        font-size: 14px;
        font-weight: 500;
        padding: 8px 14px;
        border-radius: 6px;
        transition: all 0.15s ease;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .nav-item:hover {
        background: var(--slate-100);
        color: var(--slate-900);
    }

    .nav-item.active {
        background: var(--slate-100);
        color: var(--brand-dark);
        font-weight: 600;
    }

    /* MAIN CONTAINER Layout */
    .app-container {
        max-width: 1400px;
        width: 100%;
        margin: 0 auto;
        padding: 32px 40px;
        flex: 1;
    }

    /* PAGE HEADER SYSTEM */
    .page-header {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        border-bottom: 1px solid var(--border);
        padding-bottom: 20px;
        margin-bottom: 24px;
    }

    .page-title h2 {
        font-size: 24px;
        font-weight: 700;
        letter-spacing: -0.5px;
        color: var(--slate-900);
    }

    .page-title p {
        color: var(--slate-700);
        font-size: 14px;
        margin-top: 2px;
    }

    /* ACTION BUTTONS */
    .action-group {
        display: flex;
        gap: 12px;
    }

    .action-btn {
        text-decoration: none;
        padding: 9px 16px;
        border-radius: 6px;
        font-size: 13px;
        font-weight: 500;
        display: inline-flex;
        align-items: center;
        gap: 8px;
        cursor: pointer;
        transition: all 0.1s ease;
    }

    .btn-solid {
        background: var(--brand);
        color: #ffffff;
        border: 1px solid var(--brand-dark);
    }

    .btn-solid:hover {
        background: var(--brand-dark);
    }

    .btn-outline {
        background: #ffffff;
        color: var(--slate-700);
        border: 1px solid var(--slate-300);
        box-shadow: var(--card-shadow);
    }

    .btn-outline:hover {
        background: var(--slate-50);
        border-color: var(--slate-700);
    }

    /* EXECUTIVE METRIC ROW */
    .metrics-row {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
        margin-bottom: 32px;
    }

    .metric-widget {
        background: #ffffff;
        border: 1px solid var(--border);
        border-radius: 8px;
        padding: 20px 24px;
        box-shadow: var(--card-shadow);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .metric-label {
        font-size: 12px;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        color: var(--slate-700);
        font-weight: 600;
        margin-bottom: 4px;
    }

    .metric-value {
        font-size: 28px;
        font-weight: 700;
        color: var(--slate-900);
    }

    .metric-indicator {
        font-size: 12px;
        color: var(--slate-700);
        margin-top: 2px;
    }

    .metric-icon-box {
        width: 40px;
        height: 40px;
        background: var(--slate-50);
        border: 1px solid var(--slate-200);
        border-radius: 6px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--slate-700);
        font-size: 16px;
    }

    /* GRID ARCHITECTURE FOR DATA & MODULES */
    .workspace-layout {
        display: grid;
        grid-template-columns: 2fr 1fr;
        gap: 24px;
    }

    .block-card {
        background: #ffffff;
        border: 1px solid var(--border);
        border-radius: 8px;
        box-shadow: var(--card-shadow);
        overflow: hidden;
    }

    .block-header {
        padding: 16px 24px;
        border-bottom: 1px solid var(--border);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .block-header h3 {
        font-size: 14px;
        font-weight: 600;
        color: var(--slate-900);
    }

    /* PROFESSIONAL MODULE LIST CONTAINER */
    .module-compact-list {
        display: flex;
        flex-direction: column;
    }

    .module-row-item {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 16px 24px;
        border-bottom: 1px solid var(--border);
        text-decoration: none;
        color: unset;
        transition: background 0.1s;
    }

    .module-row-item:last-child {
        border-bottom: none;
    }

    .module-row-item:hover {
        background: var(--slate-50);
    }

    .module-details {
        display: flex;
        align-items: center;
        gap: 16px;
    }

    .module-details i {
        color: var(--brand);
        font-size: 16px;
        width: 20px;
        text-align: center;
    }

    .module-text h4 {
        font-size: 13px;
        font-weight: 500;
        color: var(--slate-900);
    }

    .module-text p {
        font-size: 12px;
        color: var(--slate-700);
        margin-top: 1px;
    }

    .module-action-arrow {
        font-size: 12px;
        color: var(--slate-300);
        transition: transform 0.1s ease;
    }

    .module-row-item:hover .module-action-arrow {
        transform: translateX(3px);
        color: var(--brand);
    }

    /* CORPORATE DATA TABLE */
    .table-container {
        width: 100%;
        overflow-x: auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        background: var(--slate-50);
        padding: 12px 24px;
        font-size: 11px;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        color: var(--slate-700);
        border-bottom: 1px solid var(--border);
    }

    td {
        padding: 14px 24px;
        font-size: 13px;
        color: var(--slate-900);
        border-bottom: 1px solid var(--border);
    }

    tbody tr:last-child td {
        border-bottom: none;
    }

    tbody tr:hover td {
        background-color: var(--slate-50);
    }

    .id-column {
        font-weight: 600;
        color: var(--brand-dark);
    }

    /* FOOTER METADATA */
    .app-footer {
        border-top: 1px solid var(--border);
        padding: 24px 40px;
        margin-top: 48px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 12px;
        color: var(--slate-700);
        background: #ffffff;
    }

    /* RESPONSIVE OPTIMIZATIONS */
    @media (max-width: 1100px) {
        .workspace-layout { grid-template-columns: 1fr; }
        .metrics-row { grid-template-columns: repeat(2, 1fr); }
    }
    @media (max-width: 768px) {
        .top-bar { padding: 0 20px; }
        .app-container { padding: 20px; }
        .metrics-row { grid-template-columns: 1fr; }
        .page-header { flex-direction: column; gap: 16px; }
        .nav-menu { display: none; } /* Dropdown implementation recommended for mobile */
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
    
    <div class="nav-menu">
        <a href="/dashboard" class="nav-item active"><i class="fa-solid fa-chart-line"></i> Console</a>
        <a href="/students/register" class="nav-item"><i class="fa-solid fa-user-plus"></i> Admissions</a>
        <a href="/students/list" class="nav-item"><i class="fa-solid fa-database"></i> Records Directory</a>
    </div>
</div>

<!-- Primary Dashboard Canvas -->
<div class="app-container">

    <!-- Section Context Header -->
    <div class="page-header">
        <div class="page-title">
            <h2>System Administration Dashboard</h2>
            <p>Institutional record status, database summaries, and functional operations modules.</p>
        </div>
        <div class="action-group">
            <a class="action-btn btn-outline" href="/students/list"><i class="fa-solid fa-file-export"></i> Directory View</a>
            <a class="action-btn btn-solid" href="/students/register"><i class="fa-solid fa-plus"></i> Initialize Student Record</a>
        </div>
    </div>

    <!-- Executive Summary KPIs -->
    <div class="metrics-row">
        <div class="metric-widget">
            <div>
                <div class="metric-label">Total Database Registries</div>
                <div class="metric-value">${count}</div>
                <div class="metric-indicator">Active records profile sync</div>
            </div>
            <div class="metric-icon-box"><i class="fa-solid fa-folder-tree"></i></div>
        </div>

        <div class="metric-widget">
            <div>
                <div class="metric-label">Active Academic Profiles</div>
                <div class="metric-value">${count}</div>
                <div class="metric-indicator">Current active status valid</div>
            </div>
            <div class="metric-icon-box"><i class="fa-solid fa-user-shield"></i></div>
        </div>

        <div class="metric-widget">
            <div>
                <div class="metric-label">Active Program Curriculums</div>
                <div class="metric-value">${tc}</div>
                <div class="metric-indicator">Configured course parameters</div>
            </div>
            <div class="metric-icon-box"><i class="fa-solid fa-scroll"></i></div>
        </div>
    </div>

    <!-- Multi-Column Operational Grid -->
    <div class="workspace-layout">
        
        <!-- Left Column: Registry Logs Grid -->
        <div class="block-card">
            <div class="block-header">
                <h3>Recent System Ingestions</h3>
                <a class="action-btn btn-outline" style="padding: 5px 10px; font-size: 11px;" href="/students/list">Full Registry Log</a>
            </div>
            
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Record ID</th>
                            <th>Full Name</th>
                            <th>Age Metrics</th>
                            <th>Communications Endpoint</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="s" items="${students}">
                            <tr>
                                <td class="id-column">REF-${s.id}</td>
                                <td><strong>${s.name}</strong></td>
                                <td>${s.age}</td>
                                <td style="color: var(--slate-700);">${s.email}</td>
                            </tr>
                        </c:forEach>

                        <c:if test="${empty students}">
                            <tr>
                                <td colspan="4" style="text-align:center; padding:48px; color: var(--slate-700);">
                                    <i class="fa-solid fa-box-open" style="font-size:20px; margin-bottom:8px; display:block; color: var(--slate-300);"></i>
                                    No database entries exist within the specified profile scope.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Right Column: Operations Utility Panel -->
        <div class="block-card">
            <div class="block-header">
                <h3>Functional Utilities</h3>
            </div>
            
            <div class="module-compact-list">
                <a href="/students/register" class="module-row-item">
                    <div class="module-details">
                        <i class="fa-solid fa-square-plus"></i>
                        <div class="module-text">
                            <h4>Register Student Record</h4>
                            <p>Inject new record parameters</p>
                        </div>
                    </div>
                    <i class="fa-solid fa-chevron-right module-action-arrow"></i>
                </a>

                <a href="/students/list" class="module-row-item">
                    <div class="module-details">
                        <i class="fa-solid fa-table-list"></i>
                        <div class="module-text">
                            <h4>View Students Directory</h4>
                            <p>Query, edit, and mutate entities</p>
                        </div>
                    </div>
                    <i class="fa-solid fa-chevron-right module-action-arrow"></i>
                </a>

                <a href="/students/search" class="module-row-item">
                    <div class="module-details">
                        <i class="fa-solid fa-magnifying-glass-chart"></i>
                        <div class="module-text">
                            <h4>Search Master Index</h4>
                            <p>Indexed parameter lookups</p>
                        </div>
                    </div>
                    <i class="fa-solid fa-chevron-right module-action-arrow"></i>
                </a>

                <a href="/courses/list" class="module-row-item">
                    <div class="module-details">
                        <i class="fa-solid fa-layer-group"></i>
                        <div class="module-text">
                            <h4>Manage Course Tracks</h4>
                            <p>Calibrate duration and frameworks</p>
                        </div>
                    </div>
                    <i class="fa-solid fa-chevron-right module-action-arrow"></i>
                </a>

                <a href="/courses/list" class="module-row-item">
                    <div class="module-details">
                        <i class="fa-solid fa-file-invoice-dollar"></i>
                        <div class="module-text">
                            <h4>Fee & Accounts Ledger</h4>
                            <p>Track ledger state parameters</p>
                        </div>
                    </div>
                    <i class="fa-solid fa-chevron-right module-action-arrow"></i>
                </a>

                <a href="/reports" class="module-row-item">
                    <div class="module-details">
                        <i class="fa-solid fa-chart-pie"></i>
                        <div class="module-text">
                            <h4>Analytical Reporting</h4>
                            <p>Generate summary matrix metrics</p>
                        </div>
                    </div>
                    <i class="fa-solid fa-chevron-right module-action-arrow"></i>
                </a>
            </div>
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