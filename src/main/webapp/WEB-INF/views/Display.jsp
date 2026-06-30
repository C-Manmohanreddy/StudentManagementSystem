<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management Dashboard</title>

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

    /* MAIN CONTAINER */
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
        grid-template-columns: repeat(4, 1fr);
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
        font-size: 11px;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        color: var(--slate-600);
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
        color: var(--slate-600);
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

    /* MODULES LAYOUT GRID */
    .section-title {
        font-size: 14px;
        font-weight: 700;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        color: var(--slate-600);
        margin-bottom: 16px;
    }

    .module-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        margin-bottom: 32px;
    }

    .module-card {
        background: #ffffff;
        border: 1px solid var(--border);
        border-radius: 8px;
        box-shadow: var(--card-shadow);
        padding: 24px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        transition: transform 0.15s ease, border-color 0.15s ease;
    }

    .module-card:hover {
        border-color: var(--brand);
        transform: translateY(-2px);
    }

    .module-card-top i {
        font-size: 20px;
        color: var(--brand);
        margin-bottom: 16px;
        display: inline-block;
    }

    .module-card h3 {
        font-size: 15px;
        font-weight: 600;
        color: var(--slate-900);
        margin-bottom: 8px;
    }

    .module-card p {
        font-size: 12px;
        color: var(--slate-600);
        line-height: 1.5;
        margin-bottom: 16px;
    }

    .module-card a {
        text-decoration: none;
        color: var(--brand-dark);
        font-size: 13px;
        font-weight: 600;
        display: inline-flex;
        align-items: center;
        gap: 6px;
    }

    /* WORKSPACE STRUCTURE */
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

    /* TABLE */
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
        color: var(--slate-600);
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

    .badge {
        padding: 3px 8px;
        border-radius: 4px;
        font-size: 11px;
        font-weight: 600;
        display: inline-block;
    }

    .badge-active {
        background: #e6f4ea;
        color: #137333;
    }

    .badge-inactive {
        background: #fce8e6;
        color: #c5221f;
    }

    .actions-cell a {
        text-decoration: none;
        font-size: 12px;
        font-weight: 500;
        margin-right: 12px;
    }

    .view-link { color: var(--brand); }
    .edit-link { color: #b45309; }

    /* QUICK ACCESS LIST */
    .quick-compact-list {
        display: flex;
        flex-direction: column;
    }

    .quick-row-item {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 16px 24px;
        border-bottom: 1px solid var(--border);
        text-decoration: none;
        color: unset;
        transition: background 0.1s;
    }

    .quick-row-item:last-child {
        border-bottom: none;
    }

    .quick-row-item:hover {
        background: var(--slate-50);
    }

    .quick-text h4 {
        font-size: 13px;
        font-weight: 500;
        color: var(--slate-900);
    }

    .quick-text p {
        font-size: 12px;
        color: var(--slate-600);
        margin-top: 1px;
    }

    .quick-arrow {
        font-size: 12px;
        color: var(--slate-300);
        transition: transform 0.1s ease;
    }

    .quick-row-item:hover .quick-arrow {
        transform: translateX(3px);
        color: var(--brand);
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
        color: var(--slate-600);
        background: #ffffff;
    }

    /* RESPONSIVE OPTIMIZATIONS */
    @media (max-width: 1200px) {
        .module-grid { grid-template-columns: repeat(2, 1fr); }
        .metrics-row { grid-template-columns: repeat(2, 1fr); }
        .workspace-layout { grid-template-columns: 1fr; }
    }
    @media (max-width: 768px) {
        .top-bar { padding: 0 20px; }
        .app-container { padding: 20px; }
        .metrics-row, .module-grid { grid-template-columns: 1fr; }
        .page-header { flex-direction: column; gap: 16px; }
    }
</style>
</head>
<body>

<!-- Application Global Header Frame -->
<div class="top-bar">
    <div class="brand-section">
        <div class="brand-logo"><i class="fa-solid fa-layer-group"></i></div>
        <h1>Student Management Console</h1>
    </div>
    
    <div class="nav-menu">
        <a href="/students/" class="nav-item active"><i class="fa-solid fa-chart-line"></i> Console</a>
        <a href="/students/register" class="nav-item"><i class="fa-solid fa-user-plus"></i> Admissions</a>
        <a href="/students/list" class="nav-item"><i class="fa-solid fa-database"></i> Records Directory</a>
    </div>
</div>

<!-- Primary Dashboard Canvas -->
<div class="app-container">

    <!-- Section Context Header -->
    <div class="page-header">
        <div class="page-title">
            <h2>Welcome Back Admin Control Panel</h2>
            <p>Institutional record status, database summaries, and system operations settings.</p>
        </div>
        <div class="action-group">
            <a class="action-btn btn-outline" href="/students/list"><i class="fa-solid fa-file-export"></i> Quick Directory</a>
            <a class="action-btn btn-solid" href="/students/register"><i class="fa-solid fa-plus"></i> Initialize Student Record</a>
        </div>
    </div>

    <!-- Executive Summary KPIs -->
    <div class="metrics-row">
        <div class="metric-widget">
            <div>
                <div class="metric-label">Total Database Registries</div>
                <div class="metric-value">${totalStudents}</div>
                <div class="metric-indicator">Active records profile sync</div>
            </div>
            <div class="metric-icon-box"><i class="fa-solid fa-folder-tree"></i></div>
        </div>

        <div class="metric-widget">
            <div>
                <div class="metric-label">Active Academic Profiles</div>
                <div class="metric-value">${activeStudents}</div>
                <div class="metric-indicator">Current active status valid</div>
            </div>
            <div class="metric-icon-box"><i class="fa-solid fa-user-shield"></i></div>
        </div>

        <div class="metric-widget">
            <div>
                <div class="metric-label">Active Program Curriculums</div>
                <div class="metric-value">${totalCourses}</div>
                <div class="metric-indicator">Configured course parameters</div>
            </div>
            <div class="metric-icon-box"><i class="fa-solid fa-scroll"></i></div>
        </div>

        <div class="metric-widget">
            <div>
                <div class="metric-label">Attendance Summary</div>
                <div class="metric-value">92%</div>
                <div class="metric-indicator">System participation index</div>
            </div>
            <div class="metric-icon-box"><i class="fa-regular fa-calendar-check"></i></div>
        </div>
    </div>

    <!-- Management Modules Section -->
    <h3 class="section-title">Core Management Modules</h3>
    <div class="module-grid">
        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-user-plus"></i>
                <h3>Register Student</h3>
                <p>Inject new profiles including contact information and course tracks.</p>
            </div>
            <a href="/students/register">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-address-book"></i>
                <h3>View Students</h3>
                <p>Browse full archives with inline mutation and profile overview settings.</p>
            </div>
            <a href="/students/list">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-magnifying-glass"></i>
                <h3>Search Student</h3>
                <p>Filter criteria lookups using system index tags or names.</p>
            </div>
            <a href="/students/search">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-graduation-cap"></i>
                <h3>Manage Courses</h3>
                <p>Configure curriculum duration, fees tracking, and teachers allocation.</p>
            </div>
            <a href="/courses/list">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-user-check"></i>
                <h3>Attendance Tracker</h3>
                <p>Monitor daily track performance matrix analytics lists parameters.</p>
            </div>
            <a href="/attendance/list">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-credit-card"></i>
                <h3>Fee Ledger Details</h3>
                <p>Track historical transaction balances and system bill status.</p>
            </div>
            <a href="/fees/list">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-chart-column"></i>
                <h3>Analytical Reports</h3>
                <p>Export structural metrics files and compilation overview maps.</p>
            </div>
            <a href="/reports">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
        </div>

        <div class="module-card">
            <div class="module-card-top">
                <i class="fa-solid fa-sliders"></i>
                <h3>Console Settings</h3>
                <p>Modify preference parameters, profiles credentials and limits thresholds.</p>
            </div>
            <a href="/admin/settings">Open Module <i class="fa-solid fa-arrow-right-long"></i></a>
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
                            <th>Communications Endpoint</th>
                            <th>Course Tracks</th>
                            <th>Status State</th>
                            <th>Action Controls</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="s" items="${students}">
                            <tr>
                                <td style="font-weight: 600; color: var(--brand-dark);">REF-${s.id}</td>
                                <td><strong>${s.name}</strong></td>
                                <td style="color: var(--slate-700);">${s.email}</td>
                                <td>${s.course}</td>
                                <td>
                                    <span class="${s.status == 'Inactive' ? 'badge badge-inactive' : 'badge badge-active'}">
                                        ${s.status}
                                    </span>
                                </td>
                                <td class="actions-cell">
                                    <a class="view-link" href="/students/view/${s.id}"><i class="fa-solid fa-eye"></i> View</a>
                                    <a class="edit-link" href="/students/edit/${s.id}"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
                                </td>
                            </tr>
                        </c:forEach>

                        <c:if test="${empty students}">
                            <tr>
                                <td colspan="6" style="text-align:center; padding:48px; color: var(--slate-700);">
                                    <i class="fa-solid fa-box-open" style="font-size:20px; margin-bottom:8px; display:block; color: var(--slate-300);"></i>
                                    No database entries exist within the specified profile scope.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Right Column: Operations Utility Quick Access Panel -->
        <div class="block-card">
            <div class="block-header">
                <h3>Functional Hotlinks</h3>
            </div>
            
            <div class="quick-compact-list">
                <a href="/students/register" class="quick-row-item">
                    <div class="quick-text">
                        <h4>New Registration Ingestion</h4>
                        <p>Initialize a raw profile sequence setup</p>
                    </div>
                    <i class="fa-solid fa-chevron-right quick-arrow"></i>
                </a>

                <a href="/students/list" class="quick-row-item">
                    <div class="quick-text">
                        <h4>Update Student Records</h4>
                        <p>Modify contact parameters or change tracks status</p>
                    </div>
                    <i class="fa-solid fa-chevron-right quick-arrow"></i>
                </a>

                <a href="/attendance/list" class="quick-row-item">
                    <div class="quick-text">
                        <h4>Attendance Matrix Grid</h4>
                        <p>Calibrate system participation variables logs</p>
                    </div>
                    <i class="fa-solid fa-chevron-right quick-arrow"></i>
                </a>

                <a href="/fees/list" class="quick-row-item">
                    <div class="quick-text">
                        <h4>Fee Account Ledger tracking</h4>
                        <p>Review current payments metrics data logs</p>
                    </div>
                    <i class="fa-solid fa-chevron-right quick-arrow"></i>
                </a>

                <a href="/reports" class="quick-row-item">
                    <div class="quick-text">
                        <h4>Compile Summary Report Assets</h4>
                        <p>Process analytical reports output sheets files</p>
                    </div>
                    <i class="fa-solid fa-chevron-right quick-arrow"></i>
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