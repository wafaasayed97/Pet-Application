# Pet Application - Testing Documentation

## 📋 Table of Contents
- [Setup](#setup)
- [Test Structure](#test-structure)
- [Running Tests](#running-tests)
- [Test Coverage](#test-coverage)
- [Writing New Tests](#writing-new-tests)

## 📁 Test Structure

```
project/
├── test/
│   ├── unit/                       # Business logic tests
│   │   ├── home_cubit_test.dart    # Cubit/Bloc tests
│   │   ├── home_repo_test.dart     # Repository tests
│   │   ├── home_api_test.dart      # API layer tests
│   │   └── cat_breed_model_test.dart # Model/JSON tests
│   ├── widget/                     # UI tests
│   │   └── home_screen_test.dart   # Widget rendering tests
│   └── helpers/
│       └── test_helpers.dart       # Shared test utilities
└── integration_test/               # End-to-end tests
    └── app_test.dart               # Full app flow tests
```

**Test Cubit:**
```bash
flutter test test/unit/home_cubit_test.dart
```

**Test Repository:**
```bash
flutter test test/unit/home_repo_test.dart
```

**Test API Layer:**
```bash
flutter test test/unit/home_api_test.dart
```

**Test Models:**
```bash
flutter test test/unit/cat_breed_model_test.dart
```

#### 2. Widget Tests (UI Components)

```bash
flutter test test/widget/home_screen_test.dart
```

#### 3. Integration Tests (Full App)


# Run integration tests
flutter test integration_test/app_test.dart
```
## 🔗 Useful Resources

- [Flutter Testing Documentation](https://docs.flutter.dev/testing)
- [bloc_test Package](https://pub.dev/packages/bloc_test)
- [mocktail Package](https://pub.dev/packages/mocktail)
- [Integration Testing](https://docs.flutter.dev/testing/integration-tests)
