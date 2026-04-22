# 🛒 E-Commerce Full Stack Application

A complete full-stack e-commerce platform built with modern technologies, featuring a user-facing mobile application, a web-based admin dashboard, and a scalable backend API.

---

## 🚀 Project Overview

This project is a **full-stack e-commerce system** consisting of:

* 🛍️ **Client Application** – Mobile app for users built with Flutter
* 🧑‍💼 **Admin Panel** – Web-based dashboard built using Flutter Web
* ⚙️ **Backend Server** – RESTful API for handling business logic and database operations

---

## 🏗️ Project Structure

```
ecommerce-app/
│
├── client_side/
│   ├── ecomm_app/       # User application (Flutter Mobile)
│   └── admin_panel/     # Admin dashboard (Flutter Web)
│
├── server_side/
│   └── online_api/      # Backend API (Node.js / Express)
│
├── photos/              # Project images / assets
├── README.md
└── .gitignore
```

---

## 🛠️ Tech Stack

### Frontend (Client & Admin)

* Flutter (Mobile + Web)
* Dart
* Dio (API Integration)

### Backend (Server)

* Node.js
* Express.js
* MongoDB (Mongoose)

---

## ⚙️ Features

### 🛍️ User Side (Mobile App)

* Browse products
* View product details
* Add to cart
* Place orders
* Secure payment gateway integration 💳

### 🧑‍💼 Admin Side (Web Dashboard)

* Manage products (Add / Edit / Delete)
* Manage users
* View and manage orders

### 🔗 Backend

* RESTful APIs
* Authentication & Authorization
* Database management
* Real-time notifications 🔔
* API integration

---

## 📦 Installation & Setup

### 1. Clone the repository

```
git clone https://github.com/yourusername/ecommerce-app.git
cd ecommerce-app
```

---

### 2. Setup Backend

```
cd server_side/online_api
npm install
npm start
```

---

### 3. Run Client App (Flutter Mobile)

```
cd client_side/ecomm_app
flutter pub get
flutter run
```

---

### 4. Run Admin Panel (Flutter Web)

```
cd client_side/admin_panel
flutter pub get
flutter run -d chrome
```

---

## 🌐 Environment Variables

Create a `.env` file in the **server_side/online_api** directory and add:

```
PORT=3000
MONGO_URI=your_mongodb_connection_string
JWT_SECRET=your_secret_key
```

---

## 📸 Screenshots

*Add screenshots of your application (mobile + admin panel) to showcase UI and features.*

---

## 📌 Future Improvements

* Advanced product filtering
* Deployment (AWS / Firebase / Render)

---

## 👨‍💻 Author

**Fayas T M**
📧 Email: [fayastm03@gmail.com](mailto:fayastm03@gmail.com)
🔗 LinkedIn: https://www.linkedin.com/in/fayas-tm-098467322
💻 GitHub: https://github.com/fayastm03

---

## ⭐ Contributing

Contributions are welcome! Feel free to fork the repository and submit a pull request.

---

## 📄 License

This project is licensed under the MIT License.
