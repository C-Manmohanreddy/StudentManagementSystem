<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Students - Student Management System</title>

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

    /* CONTAINER ARCHITECTURE */
    .app-container {
        max-width: 1400px;
        width: 100%;
        margin: 0 auto;
        padding: 40px;
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
        color: var(--slate-600);
        font-size: 14px;
        margin-top: 2px;
    }

    /* BUTTON FRAMEWORKS */
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

    .btn-solid {
        background: var(--brand);
        color: #ffffff;
        border: 1px solid var(--brand-dark);
    }

    .btn-solid:hover {
        background: var(--brand-dark);
    }

    /* WORKSPACE DATA CARD */
    .block-card {
        background: #ffffff;
        border: 1px solid var(--border);
        border-radius: 8px;
        box-shadow: var(--card-shadow);
        overflow: hidden;
    }

    /* DATA TABLE ARCHITECTURE */
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
        padding: 14px 20px;
        font-size: 11px;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        color: var(--slate-600);
        border-bottom: 1px solid var(--border);
        text-align: left;
    }

    td {
        padding: 14px 20px;
        font-size: 13px;
        color: var(--slate-900);
        border-bottom: 1px solid var(--border);
        text-align: left;
    }

    tbody tr:last-child td {
        border-bottom: none;
    }

    tbody tr:hover td {
        background-color: var(--slate-50);
    }

    /* REFINING SPECIFIC COLS */
    .ref-id-cell {
        font-weight: 600;
        color: var(--brand-dark);
    }

    .identity-cell {
        font-weight: 600;
    }

    .token-text {
        font-family: monospace;
        background: var(--slate-100);
        padding: 2px 6px;
        border-radius: 4px;
        color: var(--slate-700);
        font-size: 12px;
    }

    /* ACTIONS INTERFACES */
    .actions-cell {
        display: flex;
        gap: 16px;
    }

    .actions-cell a {
        text-decoration: none;
        font-size: 12px;
        font-weight: 600;
        display: inline-flex;
        align-items: center;
        gap: 4px;
    }

    .action-edit {
        color: var(--brand);
    }
    .action-edit:hover {
        color: var(--brand-dark);
    }

    .action-delete {
        color: #dc2626;
    }
    .action-delete:hover {
        color: #b91c1c;
    }

    /* BLANK COMPONENT STATUS */
    .no-data {
        text-align: center !important;
        padding: 48px !important;
        color: var(--slate-600);
    }

    .no-data i {
        font-size: 24px;
        color: var(--slate-300);
        display: block;
        margin-bottom: 8px;
    }

    /* GENERAL FOOTER */
    .app-footer {
        border-top: 1px solid var(--border);
        padding: 24px 40px;
        margin-top: auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 12px;
        color: var(--slate-600);
        background: #ffffff;
    }

    @media (max-width: 768px) {
        .top-bar { padding: 0 20px; }
        .app-container { padding: 20px; }
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
        <a class="action-btn btn-outline" href="/"><i class="fa-solid fa-arrow-left"></i> Console Home</a>
    </div>
</div>

<!-- Primary Records Canvas Frame -->
<div class="app-container">

    <!-- Section Meta Context Header -->
    <div class="page-header">
        <div class="page-title">
            <h2>Records Directory Archive</h2>
            <p>Access active entity directories with operations to query structures or clear indices safely.</p>
        </div>
        <div>
<a class="action-btn btn-solid"
   href="${pageContext.request.contextPath}/students/register">
    <i class="fa-solid fa-user-plus"></i> Ingest New Student
</a>        </div>
    </div>

    <!-- Main Listing Workspace -->
    <div class="block-card">
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Ref ID</th>
                        <th>Full Name</th>
                        <th>Age</th>
                        <th>Communications Endpoint</th>
                        <th>Security Token</th>
                        <th>Gender</th>
                        <th>Location Address</th>
                        <th style="min-width: 140px;">Action Controls</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty studentList}">
                            <c:forEach var="s" items="${studentList}">
                                <tr>
                                    <td class="ref-id-cell">REF-${s.id}</td>
                                    <td class="identity-cell">${s.name}</td>
                                    <td>${s.age}</td>
                                    <td style="color: var(--slate-700);">${s.email}</td>
                                    <td><span class="token-text">${s.password}</span></td>
                                    <td>${s.gender}</td>
                                    <td style="color: var(--slate-600); max-width: 240px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${s.address}</td>
                                    <td class="actions-cell">
                                        <a class="action-edit"
   href="${pageContext.request.contextPath}/students/editStudent?id=${s.id}">
    <i class="fa-solid fa-pen-to-square"></i> Edit
</a>

<a class="action-delete"
   href="${pageContext.request.contextPath}/students/deleteStudent?id=${s.id}"
   onclick="return confirm('Are you sure you want to delete this student?')">
    <i class="fa-solid fa-trash-can"></i> Delete
</a></td>
                                </tr>
                            </c:forEach>
                        </c:when>

                        <c:otherwise>
                            <tr>
                                <td colspan="8" class="no-data">
                                    <i class="fa-solid fa-folder-open"></i>
                                    No student profiles exist within the repository instance range.
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
    </div>

</div>


<div class="app-footer">
    <div>Status: <strong>Operational</strong></div>
    <div>Institutional Records Framework Group &copy; 2026</div>
</div>

</body>
</html>