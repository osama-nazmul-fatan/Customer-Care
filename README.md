# CustomerCare

A Java, JSP web application for managing customer complaints, built as a NetBeans Ant project during my BSc.

lets customers sign up, log in, submit and track complaints, while support executives log in separately to view, process, and resolve pending and rectified complaints.

Key pages/modules:

- `web/signup.jsp`, `web/CustomerLogin.jsp`, `web/CustomerLoginAlert.jsp` — customer registration and login
- `web/Customer.jsp`, `web/Customer_Frontend.jsp` — customer dashboard
- `web/NewComplaint.jsp`, `web/ComplaintStatus.jsp` — filing and tracking a complaint
- `web/ExecutiveLogin.jsp`, `web/Executive.jsp` — support executive login and dashboard
- `web/PendingComplaints.jsp`, `web/RectifiedComplaints.jsp` — complaint queue management
- `src/java/CustomaCare/CutomerBackend.java` — backend logic (JDBC/MySQL data access)

## Tech stack

- Java, JSP, JDBC
- MySQL (via `mysql-connector-java`)
- Apache Ant (NetBeans-generated build, see `build.xml` and `nbproject/`)
- Designed to run on a Java EE application server (e.g. GlassFish)

## Setup

1. Create a MySQL database named `project` and the tables referenced in the JSP/Java files (`login`, `execlogin`, and the complaints tables).
2. This project connects to `jdbc:mysql://localhost:3306/project` with user `root`. The password has been replaced with the placeholder `YOUR_DB_PASSWORD` in `src/java/CustomaCare/CutomerBackend.java`, `web/PendingComplaints.jsp`, and `web/RectifiedComplaints.jsp` — set it to your own local MySQL root password (or, better, create a dedicated DB user) before running.
3. Open the project in NetBeans (or build with `ant`) and deploy to a Java EE server such as GlassFish.
