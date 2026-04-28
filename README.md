# Flutter Architecture Template (MVVM + GetX)

A scalable Flutter project structured using **MVVM (Model - View - ViewModel)** with **GetX** for state management, routing, and dependency injection.

This repository serves as a **standard architecture blueprint** for building consistent, maintainable, and production-ready Flutter applications.

---

## Architecture Overview

This project is designed with:

* MVVM architecture pattern
* Feature-based modular structure
* Repository pattern
* Clear separation of concerns

---

## Architecture Diagram

```
View (UI)
   ↓
ViewModel (GetX Controller)
   ↓
Repository
   ↓
Provider (API Layer)
   ↓
API
```

---

## Project Structure

```
lib/
├── core/
│   ├── constants/       # App-wide constants
│   ├── localization/    # Language support
│   ├── network/         # API client & interceptors
│   ├── services/        # Shared services
│   ├── storage/         # Local storage handling
│   ├── theme/           # Styling & themes
│   ├── utils/           # Helpers & extensions
│   └── widgets/         # Reusable UI components
│
├── data/
│   ├── models/          # API response models
│   ├── providers/       # API calls
│   └── repositories/    # Repository implementations
│
├── domain/
│   ├── entities/        # Business models
│   └── repositories/    # Abstract contracts
│
├── modules/             # Feature-based modules
│   ├── auth/
│   ├── home/
│   └── profile/
│
├── routes/
│   ├── app_pages.dart   # Route definitions
│   └── app_routes.dart  # Route names
│
└── main.dart
```

---

## Layer Responsibilities

### View

* UI components and screens
* Observes state from ViewModel
* Contains no business logic

---

### ViewModel

* Manages UI state
* Handles user interactions
* Communicates with repositories

---

### Domain

* Defines business rules
* Contains pure entities
* Declares repository contracts

---

### Data

* Handles API communication
* Implements repository logic
* Transforms models into entities

---

### Core

* Shared utilities and services
* Includes network, storage, theming, and helpers

---

## Data Flow

```
View → ViewModel → Repository → Provider → API
```

Response handling:

```
API → Model → Repository → Entity → ViewModel → View
```

---

## Example Flow (Login)

1. User triggers an action from UI
2. View calls ViewModel
3. ViewModel invokes Repository
4. Repository fetches data via Provider
5. Provider calls API
6. Response is mapped to Entity
7. ViewModel updates state
8. UI reacts to state change

---

## Technologies

* Flutter
* GetX (State Management, Routing, Dependency Injection)
* Dio / http (Networking)

---

## Getting Started

Install dependencies:

```
flutter pub get
```

Run the project:

```
flutter run
```

---

## Guidelines

### Best Practices

* Keep ViewModels focused and minimal
* Use repositories for all data operations
* Maintain clear separation between layers
* Keep UI free from business logic

---

### Avoid

* Direct API calls in ViewModel
* Business logic inside UI
* Large and tightly coupled controllers
* Overuse of global state

---

## Purpose

* Standardize project architecture
* Improve maintainability and readability
* Enable scalable development
* Provide a reusable project foundation

---

## Future Improvements

* Testing support
* Offline-first capability
* Caching strategies
* Modular package separation

---

## Contribution

This project serves as a reference architecture. Contributions and improvements are welcome.

---

## License

This project is licensed under the Apache-2.0 License.
