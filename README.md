# TruMediX HMS – MVP

A lightweight **Hospital Management System (HMS)** built with **Java**, **JavaFX (FXML)**, and **MySQL (XAMPP)**. This MVP version handles core hospital operations with stable database connectivity.

---

## 🚀 Features

* Patient registration & management
* Doctor management
* Appointments
* Billing (MVP-level)
* Role‑based login
* JavaFX UI
* MySQL database integration

---

## 🔰 Tech Stack & Badges

![Java](https://img.shields.io/badge/Java-17-orange)
![Maven](https://img.shields.io/badge/Maven-Build%20Tool-blue)
![JavaFX](https://img.shields.io/badge/JavaFX-FXML-green)
![MySQL](https://img.shields.io/badge/Database-MySQL-lightgrey)
![XAMPP](https://img.shields.io/badge/XAMPP-Server%20Stack-critical)

---

## 📦 Requirements

* **Java 17+**
* **Maven** installed
* **XAMPP** (MySQL + Apache)
* **SceneBuilder** (optional but recommended)

---

## 🛠️ Setup Instructions

### **1. Install XAMPP**

Download and install XAMPP from the official website:

* [https://www.apachefriends.org/download.html](https://www.apachefriends.org/download.html)

After installation:

1. Open **XAMPP Control Panel**
2. Start **Apache** and **MySQL**

---

### **2. Import the Database**

Inside the repo you'll find a file:

```
trumedixdb.sql
```

To import it:

1. Go to: **[http://localhost/phpmyadmin](http://localhost/phpmyadmin)**
2. Click **Import** tab
3. Select `trumedixdb.sql`
4. Click **Go**

Your database is now ready.

---

**PS: Dummy data doctors is located in this folder [Doctors](src/main/resources/media/doctors/maledoc3.jpg)**

### **3. Configure Database Connection**

Make sure your MySQL configuration matches:

```
host: localhost
port: 3306
database: trumedixdb
username: root
password: ""  (blank)
```

If you changed your MySQL password, update it in the app’s configuration file.

---

### **4. Build & Run**

Use Maven to build:

```
mvn clean install
```

Run the application:

```
mvn javafx:run
```

---

## 📁 Project Structure

```
📦 src
 ┣ 📂 main
 ┃ ┣ 📂 java
 ┃ ┣ 📂 resources
 ┃ ┗ 📜 application.fxml
📦 trumedixdb.sql
📦 pom.xml
```

---

## 🧪 Testing the App

Once the app launches:

* Login with the default credentials (if provided)
* Test database‑related features: patient registration, appointment creation, etc.
* If MySQL is not running, app will show a connection error.

---

## 💡 Troubleshooting

| Issue                         | Solution                         |
| ----------------------------- | -------------------------------- |
| Database connection failed    | Ensure MySQL is ON in XAMPP      |
| "Access denied for user root" | Remove password or update config |
| Tables missing                | Re‑import `trumedixdb.sql`       |

---

## 📜 License

MIT – Free to use and improve.

---

## 🙌 Credits

Developed by the **Group 1**.
## Members
### [Daveora](https://github.com/davex-ai)
### [Mumbarak](https://github.com/ASTROL360)
### [Zane](https://github.com/zaneXXL203)

## Preview
![](/TruMedix%20App%202025-12-12%2017-40-56.gif)
---
