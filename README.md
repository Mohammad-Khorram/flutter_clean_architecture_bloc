# CLEAN architecture using BLoC

This is a sample Flutter project CLEAN architecture using BLoC pattern

## Architecture features

* CLEAN architecture
* BLoC pattern
* Singleton design pattern
* unit-test, bloc-test

## Used packages

* Using mockito, bloc_test, and build_runner to handle unit-test and bloc-test
* Using get_it as dependency injection
* Using dartz to error-handling
* Using equatable to make relation between data-layer and domain-layer and also make it easier
  writing unit-test
* Using logger as debug tools
* Using flutter_screenutil for build better responsive app
* Using flutter_secure_storage as encoded shared-preferences
* Using GetX to handle multi-language, multi-theme, and routing (specially web-routing)
* Using dio for http request

## How to Use

1. Clone or download the repository
2. Open the project in your IDE
3. Install the dependencies using `flutter pub get`
4. Run the project using `flutter run`
5. To execute tests, first you need to run build_runner command
   using `dart run build_runner build --delete-conflicting-outputs` (This will run a
   one-time build of the files)
6. If you want to watch for changes to the files and rebuild them automatically, you can use the
   watch command instead: `dart run build_runner watch`
7. To build a release APK for each supported ABI, you can use the following
   command: `flutter build apk --release --split-per-abi`
8. Also to build a web app for release, you can use the `flutter build web` command.

## Screenshots

* ![home dark](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/home_dark.png)
* ![home light](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/home_light.png)
* ![product_details dark](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/product_details_dark.png)
* ![product_details light](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/product_details_light.png)
* ![profile_dark](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/profile_dark.png)
* ![profile light](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/profile_light.png)
* ![login dark](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/login_dark.png)
* ![login light](https://github.com/Mohammad-Khorram/store/tree/main/screenshots/login_light.png)