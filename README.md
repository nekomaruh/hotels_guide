# Hotels Guide
Test Flutter Developer - Guia de Moteis (Challenge) to evaluate skills in Flutter, Dart, state management, API consumption, and unit testing.

### 🎯 Challenge Description

The challenge consists of creating a replica of the motel listing screen (only the "Go Now" tab) from the Guia de Motéis GO app, using the following mock API links to obtain data:

- https://jsonkeeper.com/b/1IXK
- https://www.npoint.io/docs/e728bb91e0cd56cc0711

### 📌 Requirements

The listing should display available motels with their name, price, and image.
The design does not need to be 100% identical, and alternative icons or visual variations can be used.
Navigation to other screens is not required.
Implement unit tests covering the main components of the application.

# 💡 Solution

![Coverage](coverage_badge.svg?sanitize=true)
[![Guia de Motéis Flutter Challenge](https://img.youtube.com/vi/mwY4PWfcDMw/0.jpg)](https://www.youtube.com/watch?v=mwY4PWfcDMw)

## 🏗️ Project Architecture Overview

This project was developed following the principles of `Clean Architecture` to ensure modularity, separation of concerns, and testability. Below are the key aspects of the architecture and the technologies used:

### 📌 Architecture

The application is structured into three main layers:

- **Presentation**: Manages the user interface and user interactions.
- **Domain**: Contains the business logic through use cases.
- **Data**: Manages data fetching from APIs and its transformation into models.

This separation allows for better scalability and maintainability of the code.

### 🎨 Presentation Layer (UI)
For the presentation layer, **Flutter BLoC** was used together with the `MVI (Model-View-Intent)` pattern, ensuring efficient and reactive state management. Each screen is connected to a `Bloc`, which handles events and exposes states to the UI.

### ⚙️ Domain Layer (Business Logic)
`Use Cases` were implemented to encapsulate the business logic. Each use case represents a specific action, such as fetching the list of available motels. This ensures that the business logic is reusable and independent of the data source.

### 🛠️ Data Layer
For API communication, `Dio` was used, a powerful HTTP client for Dart that facilitates managing requests and responses. The `Repository` pattern was applied, acting as an intermediary between use cases and the data source. Data models handle the transformation of JSON into Dart objects.

### 🌐 API Consumption
Motel data is fetched from the following mock endpoints provided in the test:
- [https://jsonkeeper.com/b/1IXK](https://jsonkeeper.com/b/1IXK)
- [https://www.npoint.io/docs/e728bb91e0cd56cc0711](https://www.npoint.io/docs/e728bb91e0cd56cc0711)

These APIs are consumed through `Dio`, with proper error and response handling.

### 📦 State Management
`Flutter BLoC` was used to manage the app's state, allowing a reactive structure that is easy to test. Each event triggers a state change, ensuring the UI always reflects the most current information.

### 🏗️ Dependency Injection
To manage dependencies and facilitate testing, `GetIt` was used, a lightweight and efficient dependency container. This allows the centralized instantiation of use cases, repositories, and data providers.

### 🧪 Testing
**Unit tests** were implemented using `flutter_test`, `mockito`, and `bloc_test` to ensure the proper functioning of use cases, repositories, and state management with BLoC. The goal was to achieve at least **70% code coverage** for the motel list functionality.

### ✅ Code Quality
Development followed best practices from **Effective Dart** and **SOLID principles**, ensuring clean, modular, and maintainable code.

### 🚀 GitHub Repository
The source code of the application was uploaded to a **GitHub** repository, adhering to version control and documentation best practices.


# 📊 Unit Testing Coverage

This project has a **95.7%** test coverage.

| Directory                             | Coverage (%) | Total Lines | Covered Lines |
|--------------------------------------|--------------|-------------|---------------|
| `config/`                            | 🟩 **100.0%**  | 16          | 16            |
| `data/model/`                        | 🟩 **100.0%**  | 109         | 109           |
| `data/repositories/`                 | 🟩 **100.0%**  | 9           | 9             |
| `data/services/api/`                 | 🟩 **100.0%**  | 9           | 9             |
| `data/services/api/interceptor/`     | 🟩 **100.0%**  | 20          | 20            |
| `data/services/api/ssl/`             | 🟥 **33.3%**   | 6           | 2             |
| `domain/entity/`                     | 🟩 **100.0%**  | 9           | 9             |
| `domain/use_case/`                   | 🟩 **100.0%**  | 3           | 3             |
| `ui/hotels/bloc/`                    | 🟩 **100.0%**  | 19          | 19            |
| `utils/`                              | 🟨 **72.7%**   | 11          | 8             |

> 📌 *Note:* The function coverage column was omitted because function owners were not identified.

📅 **Test Date:** 2025-02-07  
🔍 **Report Generated by:** [LCOV](http://ltp.sourceforge.net/coverage/lcov.php) v2.3-1

