# 🏋️ Sports Tools Management System (ASP.NET)

A web application to manage sports equipment across an organization. It streamlines inventory tracking, issuing/returning tools, user roles and permissions, and reporting—built with ASP.NET and SQL Server.

---

## 🚀 Key Features

- Equipment inventory management (add, edit, categorize, mark active/inactive)
- Issue and return workflows with due dates and status tracking
- Role-based access (Admin, Manager/Staff, User)
- User and department management
- Transaction history and audit trail
- Search, filters, and pagination for large inventories
- Basic reporting and exports (usage, stock levels, overdue items)
- Notifications/alerts for overdue or low-stock items
- Secure authentication and authorization

---

## 🛠️ Tech Stack

- Framework: ASP.NET
- Language: C#
- Database: SQL Server
- Frontend: HTML, CSS, JavaScript, Bootstrap
- ORM/Access: Entity Framework or ADO.NET (JDBC-equivalent in .NET)
- Build/IDE: Visual Studio

---

## ⚙️ Getting Started

1. Clone the repository
   ```bash
   git clone https://github.com/sahil-ladola/Sports-Tools-Management-ASP.NET.git
   ```
2. Open in Visual Studio (recommended 2019/2022).
3. Restore packages if prompted (NuGet).
4. Configure the database connection:
   - For ASP.NET Core: set `ConnectionStrings.DefaultConnection` in `appsettings.json`.
   - For classic ASP.NET: update `<connectionStrings>` in `Web.config`.
5. Initialize the database:
   - Option A: Run migrations/Database Update (EF).
   - Option B: Execute SQL scripts from `/sql/` in your SQL Server.
6. Build and run the project:
   - Press F5 or use IIS Express.

---

## 🔐 Roles

- Admin: Full system access, manage users, inventory, and reports
- Manager/Staff: Manage inventory and handle issue/return operations
- User: Request tools and view personal transactions

---

## 🧪 Suggested Test Scenarios

- Add equipment, categorize it, and verify stock levels
- Issue equipment to a user and confirm transaction logging
- Return equipment and validate status/stock updates
- Attempt restricted actions with a non-admin user to confirm RBAC
- Generate a usage/overdue report

---

## 🤝 Contributing

Contributions are welcome!
- Fork the repo
- Create a feature branch
- Submit a PR with a clear description and screenshots (if UI changes)

---

## 📧 Contact

For questions or collaboration:
- Email: sahilladola.1873@gmail.com  
- LinkedIn: [Sahil Ladola](https://linkedin.com/in/sahil-ladola)
