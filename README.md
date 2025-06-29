# 🛍️ mCommerceApp

A simple SwiftUI-based mobile commerce application built using modern iOS development practices. It showcases a product listing, detail view, and cart functionality using MVVM, Combine, and async/await.

---

## 🚀 Approach & Architecture

### 🔧 Tech Stack
- Swift 5.0
- SwiftUI
- Combine
- async/await (for networking)
- MVVM architecture
- Xcode 15+

### 🧱 Architecture

The app follows the **MVVM (Model-View-ViewModel)** design pattern, separating concerns cleanly:

- `Models`: Data structures conforming to `Codable`
- `ViewModels`: Handle business logic and state, using `@Published` (Combine)
- `Views`: SwiftUI views subscribing to state via `@StateObject` or `@EnvironmentObject`
- `Services`: Network layer using async/await
- `Persistence`: Cart state stored in `UserDefaults`

### 💾 Local Persistence
Cart items are saved and loaded using `UserDefaults` via JSON serialization. This ensures the cart persists between app launches.

---

## 📱 Features

- ✅ Product List fetched from [FakeStoreAPI](https://fakestoreapi.com/products)
- ✅ Product Detail screen with full information
- ✅ Add to Cart with quantity and total price tracking
- ✅ Update quantity and remove items from cart
- ✅ Persistent cart using UserDefaults
- ✅ Real-time cart badge on tab bar
- ✅ Unit tests for CartManager

---

## 🧠 Assumptions Made

- No user authentication or checkout flow is required
- Using `UserDefaults` is acceptable for cart persistence (no complex data structure or multi-user requirement)
- Images from the FakeStore API are assumed to be safe and accessible
- Basic UI/UX styling based on native SwiftUI elements

---

## ⏱️ Time Taken

**~2 hours**  
This includes setting up the project, implementing core functionality, local persistence, MVVM structure, and writing unit tests.

---

## 🧪 To Run Tests

1. Open `mCommerceApp.xcodeproj` in Xcode
2. Select `mCommerceAppTests` target
3. Press `Cmd + U` to run all unit tests

---

## 📸 Screenshots

| User List | User Detail | Search |
|-----------|-------------|--------|
| ![](screenshots/list.png) | ![](screenshots/detail.png) | ![](screenshots/search.png) |

---

## 📬 Contact

Built by **Vishwa Fernando**  
For technical assignment purposes.

