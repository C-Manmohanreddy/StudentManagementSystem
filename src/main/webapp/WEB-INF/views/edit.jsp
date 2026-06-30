<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Student - Student Management System</title>

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
        outline: none;
    }

    .btn-solid:hover {
        background: var(--brand-dark);
    }

    /* MAIN CONTAINER Layout */
    .app-container {
        max-width: 800px;
        width: 100%;
        margin: 0 auto;
        padding: 40px 24px;
        flex: 1;
    }

    /* FORM ARCHITECTURE CARD */
    .form-card {
        background: #ffffff;
        border: 1px solid var(--border);
        border-radius: 8px;
        box-shadow: var(--card-shadow);
        overflow: hidden;
    }

    .form-header {
        padding: 24px 32px;
        border-bottom: 1px solid var(--border);
        background: #ffffff;
    }

    .form-header h2 {
        font-size: 18px;
        font-weight: 700;
        letter-spacing: -0.3px;
        color: var(--slate-900);
    }

    .form-header p {
        font-size: 13px;
        color: var(--slate-600);
        margin-top: 4px;
    }

    .form-body {
        padding: 32px;
    }

    /* FORM CONTROLS GRID */
    .form-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 24px;
    }

    .full-width {
        grid-column: span 2;
    }

    @media (max-width: 600px) {
        .form-grid { grid-template-columns: 1fr; }
        .full-width { grid-column: span 1; }
        .form-body { padding: 20px; }
    }

    .form-group {
        display: flex;
        flex-direction: column;
        gap: 6px;
    }

    .form-group label {
        font-size: 12px;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        color: var(--slate-700);
    }

    /* FIELD TYPES */
    input[type="text"],
    input[type="number"],
    input[type="email"],
    input[type="password"],
    textarea {
        width: 100%;
        padding: 10px 14px;
        background: #ffffff;
        border: 1px solid var(--slate-300);
        border-radius: 6px;
        font-size: 14px;
        color: var(--slate-900);
        outline: none;
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.02);
        transition: border-color 0.1s, box-shadow 0.1s;
    }

    input:focus, textarea:focus {
        border-color: var(--brand);
        box-shadow: 0 0 0 3px rgba(2, 132, 199, 0.12);
    }

    input:read-only {
        background: var(--slate-100);
        color: var(--slate-600);
        cursor: not-allowed;
    }

    textarea {
        resize: none;
    }

    /* RADIO OPTION FRAMEWORKS */
    .radio-flex-group {
        display: flex;
        gap: 24px;
        padding-top: 8px;
    }

    .radio-label-box {
        display: flex;
        align-items: center;
        gap: 8px;
        font-size: 14px;
        color: var(--slate-900);
        cursor: pointer;
        font-weight: 400 !important;
        text-transform: none !important;
        letter-spacing: normal !important;
    }

    .radio-label-box input[type="radio"] {
        accent-color: var(--brand);
        width: 16px;
        height: 16px;
    }

    /* FOOTER CONTROLS ROW */
    .form-footer-action {
        background: var(--slate-50);
        border-top: 1px solid var(--border);
        padding: 24px 32px;
        display: flex;
        justify-content: flex-end;
        gap: 12px;
    }

    /* APP GENERAL FOOTER */
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
</style>
</head>
<body>

<div class="top-bar">
    <div class="brand-section">
        <div class="brand-logo"><i class="fa-solid fa-layer-group"></i></div>
        <h1>Student Management Console</h1>
    </div>
    
    <div class="nav-menu">
        <a class="action-btn btn-outline" href="/"><i class="fa-solid fa-arrow-left"></i> Console Home</a>
        <a class="action-btn btn-outline" href="students"><i class="fa-solid fa-address-book"></i> View Records</a>
    </div>
</div>

<div class="app-container">

    <div class="form-card">
        <div class="form-header">
            <h2>Modify Entity Profile</h2>
            <p>Alter existing database configurations parameters and profile identities safely.</p>
        </div>

        <form action="update" method="post">
            <div class="form-body">
                <div class="form-grid">
                    
                    <div class="form-group">
                        <label for="id">Record Ref ID</label>
                        <input type="number" id="id" name="id" value="${student.id}" readonly>
                    </div>

                    <div class="form-group">
                        <label for="age">Age Metric</label>
                        <input type="number" id="age" name="age" value="${student.age}" required>
                    </div>

                    <div class="form-group full-width">
                        <label for="name">Full Identity Name</label>
                        <input type="text" id="name" name="name" value="${student.name}" required>
                    </div>

                    <div class="form-group full-width">
                        <label for="email">Communications Endpoint (Email)</label>
                        <input type="email" id="email" name="email" value="${student.email}" required>
                    </div>

                    <div class="form-group full-width">
                        <label for="password">Security Verification Token</label>
                        <input type="password" id="password" name="password" value="${student.password}" required>
                    </div>

                    <div class="form-group full-width">
                        <label>Gender Parameter</label>
                        <div class="radio-flex-group">
                            <label class="radio-label-box">
                                <input type="radio" name="gender" value="Male" ${student.gender == 'Male' ? 'checked' : ''}> Male
                            </label>
                            <label class="radio-label-box">
                                <input type="radio" name="gender" value="Female" ${student.gender == 'Female' ? 'checked' : ''}> Female
                            </label>
                            <label class="radio-label-box">
                                <input type="radio" name="gender" value="Other" ${student.gender == 'Other' ? 'checked' : ''}> Other
                            </label>
                        </div>
                    </div>

                    <div class="form-group full-width">
                        <label for="address">Physical Location Address</label>
                        <textarea id="address" rows="4" name="address" required>${student.address}</textarea>
                    </div>

                </div>
            </div>

            <div class="form-footer-action">
                <a href="students" class="action-btn btn-outline">Cancel Mutation</a>
                <input type="submit" class="action-btn btn-solid" value="Commit Profile Changes">
            </div>
        </form>
    </div>

</div>

<div class="app-footer">
    <div>Status: <strong>Operational</strong></div>
    <div>Institutional Records Framework Group &copy; 2026</div>
</div>

</body>
</html>