# 🧠 Master Suite: Architecture and Agent Ecosystem

Master Suite is an advanced architecture that transforms a standard AI into an **autonomous software development company (Multi-Agent System)**. This document explains how the system operates in the background and how specialized agents coordinate with each other.

## 👻 Ghost Engine Architecture
At the core of the system lies the **Ghost Engine**. When you enter a command:
1. **Interception:** Your command is caught in mid-air by the Ghost Engine before reaching the standard AI.
2. **License & Security Check:** The request is securely verified through the remote server (`api_verify.php`).
3. **Routing:** Once approved, the Ghost Engine wakes up the most appropriate background agent (or group of agents) and delegates the task.

## 🤖 Specialized Agents (The Roster)
Master Suite contains independent agents, each specialized in a specific domain, working together and auditing one another:

*   👔 **Project Manager (`ag-project-manager`):** Takes your large requests, breaks them into atomic tasks, creates a `PLAN.md`, and delegates to other agents.
*   🐘 **PHP & Backend Architect (`ag-php-developer`):** Writes PHP 8.3/8.4, strict types, mini-MVC, and secure REST APIs.
*   🎨 **Frontend & UI Expert (`ag-frontend-developer`):** Designs modern, aesthetic, and accessible (WCAG 2.2 AA) interfaces using Tailwind CSS and Alpine.js.
*   🗄️ **Database Expert (`ag-database-expert`):** Designs 3NF normalized, indexed, and performance-driven MySQL/PostgreSQL schemas.
*   🕷️ **18-Engine SEO Expert (`ag-seo-expert`):** Crawls your live website and performs repairs based on Google/Bing algorithms (Engine V3.0).
*   🛡️ **Security & Bug Hunter (`ag-bug-hunter` & `ag-security-expert`):** Scans written code for OWASP vulnerabilities (SQLi, XSS, IDOR) and logical edge-cases.
*   🧪 **Test Engineer (`ag-test-engineer`):** Follows the "Iron Law of Verification", writing and executing tests (PHPUnit, Playwright) before any task is closed.

## 🔄 Workflow: How Agents Collaborate
When you assign a task, the process flows as follows:

1. **Task Slicing:** The PM reviews the job. *Example: "Create a login page."*
2. **Assembly Line Production:** 
   - First, the **Database Expert** designs the table.
   - Next, the **PHP Expert** writes the secure login algorithm.
   - Then, the **Frontend Expert** codes the design.
3. **Adversarial Review (Doubt-Driven Development):** The Bug Hunter reviews the code skeptically, searching for security vulnerabilities or logic flaws.
4. **4 Quality Gates:** Before delivery, the code must pass 4 gates (Syntax PASS, UTF-8 BOM PASS, Security PASS, Test Proof PASS).
5. **Delivery:** Once approved by all agents, the final code is integrated into your project.

Master Suite is a revolution that allows you to work not just with a single AI, but with a massive, coordinated AI engineering department simultaneously.
