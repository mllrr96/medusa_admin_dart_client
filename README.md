

## Flutter Medusa Admin Package

### Description
An easy way to communicate with your [Medusa](https://medusajs.com/) server, this package is used in [Medusa Admin Flutter](https://github.com/mllrr96/Medusa-Admin-Flutter)

## Set up Project

### Prerequisites
Before you start with the tutorial make sure you have

- [Flutter](https://flutter.dev/) 
- [Dart](https://dart.dev/get-dart) 
- [Medusa server](https://docs.medusajs.com/quickstart/quick-start/) v14 or greater installed on your machine


### Installation

Add Dependency of the package in your pubspec.yaml file:

```bash
  medusa_admin_flutter:
    git:
      url: https://github.com/mllrr96/Medusa_Admin_API_Flutter.git
      ref: main
```

### USAGE

Import Medusa as a default import and initialize it:


```dart
import 'package:medusa_admin_flutter/medusa_admin.dart';
var MedusaAdmin medusaAdmin = MedusaAdmin.initialize(
   config: MedusaConfig(baseUrl: 'MEDUSA_SERVER_URL'),
);

UserProductsListRes? productsListRes = await medusaAdmin.productsRepository.retrieveAll();
```

## Example Demo

![Medusa Admin Flutter](https://github.com/mllrr96/Medusa-Admin-Flutter)

## Resources

- [Medusa’s GitHub repository](https://github.com/medusajs/medusa)
- [Medusa Documentation](https://docs.medusajs.com/)
