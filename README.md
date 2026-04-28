# 📱 Flutter Architecture Demo (MVVM + GetX)

A scalable Flutter project demonstrating a clean and maintainable architecture using **MVVM (Model - View - ViewModel)** with **GetX** for state management, routing, and dependency injection.

This project acts as a **standard architecture template** for all applications to ensure consistency, scalability, and clean code practices.

---

## 🏗️ Architecture Overview

This project follows:

- ✅ MVVM Architecture
- ✅ Feature-Based Modular Structure
- ✅ Repository Pattern
- ✅ Clean Separation of Concerns

---

## 🧭 Architecture Diagram

        ┌──────────────┐
        │     View     │
        │ (UI Layer)   │
        └──────┬───────┘
               │
               ▼
        ┌──────────────┐
        │  ViewModel   │
        │  (GetX Ctrl) │
        └──────┬───────┘
               │
               ▼
        ┌──────────────┐
        │ Repository   │
        │ (Abstraction)│
        └──────┬───────┘
               │
               ▼
        ┌──────────────┐
        │   Provider   │
        │  (API Layer) │
        └──────┬───────┘
               │
               ▼
        ┌──────────────┐
        │     API      │
        └──────────────┘

---

## 📂 Project Structure


lib/
├── core/
│ ├── constants/ # App constants
│ ├── localization/ # Language support
│ ├── network/ # API client, interceptors
│ ├── services/ # Shared services
│ ├── storage/ # Local storage
│ ├── theme/ # App theme & styling
│ ├── utils/ # Helpers & extensions
│ ├── widgets/ # Reusable widgets
│
├── data/
│ ├── models/ # API response models
│ ├── providers/ # API calls
│ ├── repositories/ # Repository implementations
│
├── domain/
│ ├── entities/ # Business models (clean)
│ ├── repositories/ # Abstract contracts
│
├── modules/ # Feature-based modules
│ ├── auth/
│ ├── home/
│ ├── profile/
│
├── routes/
│ ├── app_pages.dart # Route pages
│ ├── app_routes.dart # Route names
│
├── main.dart


---

## 🧠 Architecture Layers

### 🔹 View (UI Layer)
- Screens & Widgets
- Observes ViewModel
- No business logic

---

### 🔹 ViewModel (GetX Controller)
- Manages UI state
- Handles user actions
- Calls repository

---

### 🔹 Domain Layer
- Contains business logic
- Defines repository contracts
- Includes pure entities

---

### 🔹 Data Layer
- Handles API calls (Providers)
- Converts Models ↔ Entities
- Implements repositories

---

### 🔹 Core Layer
- Shared utilities and services
- Network, storage, theme, localization, etc.

---

## 🔁 Data Flow


View → ViewModel → Repository → Provider → API


Response Flow:


API → Model → Repository → Entity → ViewModel → View


---

## 📦 Example Flow (Login)

1. User interacts with UI
2. View calls ViewModel
3. ViewModel calls Repository
4. Repository calls Provider
5. Provider fetches data from API
6. Model converts to Entity
7. ViewModel updates UI

---

## 🧩 Technologies Used

- Flutter
- GetX (State Management + Routing + DI)
- Dio/http (API Client)

---

## 🚀 Getting Started

### 1. Install dependencies

flutter pub get


### 2. Run the app

flutter run


---

## 📌 Guidelines

### ✅ Best Practices
- Keep ViewModels small and focused
- Use repository for all data operations
- Use bindings for dependency injection
- Keep UI free from business logic

---

### ❌ Avoid
- Direct API calls in ViewModel
- Business logic inside UI
- Overuse of global state
- Large controllers

---

## 🎯 Purpose

- Standardize architecture across projects
- Improve maintainability
- Enable scalability
- Provide a clean starting point

---

## 🔮 Future Improvements

- Unit testing support
- Offline-first architecture
- Caching layer
- Modular package separation

---

## 🤝 Contribution

This is an internal reference project. Contributions are welcome.

---

## 📄 License

For internal use only.
