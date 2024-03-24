

## Medusa Admin Dart Client

### Description
An easy way to communicate with your [Medusa](https://medusajs.com/) server

## Set up Project

### Prerequisites
Before you start with the tutorial make sure you have

- [Flutter](https://flutter.dev/) 
- [Dart](https://dart.dev/get-dart) 
- [Medusa server](https://docs.medusajs.com/quickstart/quick-start/) v14 or greater installed on your machine


### Installation

Add Dependency of the package in your pubspec.yaml file:

```bash
  medusa_admin_dart_client:
    git:
      url: https://github.com/mllrr96/medusa_admin_dart_client.git
      ref: main
```

### USAGE

Import MedusaAdmim package

```dart
import 'package:medusa_admin_dart_client/medusa_admin.dart';
```

Initialize it:

```dart
MedusaAdmin medusaAdmin = MedusaAdmin.initialize(baseUrl: 'MEDUSA_SERVER_URL');
```

Get all products:

```dart
UserProductsListRes? productsListRes = await medusaAdmin.productsRepository.retrieveAll();
```
### NOTE:  
This package will not save the jwt/cookie you get after signing in, you need to save it yourself and include it in the header via interceptors, below is an example on how to do it

Medusa provides three methods to authenticate: JWT, Cookie, and API Token. Read more about it  [here](https://docs.medusajs.com/api/admin#authentication) 

The example covers all of the methods

```dart
      // Sign in with signInJWT or singInCookie method to get jwt/cookie (JWT is preferred)

      //JWT
      String? result = await medusaAdmin.authRepository.signInJWT(
          req: PostAuthReq(email: 'email', password: 'password'));

      // Or using cookie
      String? result = await medusaAdmin.authRepository.signInCookie(
          req: PostAuthReq(email: 'email', password: 'password'));

      // save the result
      if (result != null) {
        // Save the result using your favorite storage package, here I save it using shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('jwt', result);
        // or in case you are using cookie 
        await prefs.setString('cookie', result);
      }
```

we are done with saving the JWT/cookie, let's add them to the header of our requests by adding an interceptor

```dart
  Interceptor authInterceptor = InterceptorsWrapper(
    onRequest: (options, handler) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      // In case you are using JWT based authentication
      String? jwt = prefs.getString('jwt');
      options.headers['x-medusa-access-token'] = jwt;

      // In case you are using cookie based authentication
      String? cookie = prefs.getString('cookie');
      options.headers['Cookie'] = jwt;

      // There is a third authentication method which is using API Token
      options.headers['x-medusa-access-token'] = 'api token';

      // don't forget to call next handler
      handler.next(options);
    },
  );
```
Add the interceptor to Medusa Admin initializer

```dart
MedusaAdmin medusaAdmin = MedusaAdmin.initialize(baseUrl: 'MEDUSA_SERVER_URL', interceptors: [authInterceptor]);
```
> **_NOTE:_** You can use whatever way to save and retrieve jwt/coookie, it's advised to encrypt such sensetive information and save them, I used [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) in [Medusa Admin Flutter](https://github.com/mllrr96/Medusa-Admin-Flutter), [Hive](https://pub.dev/packages/hive) also provides encryption


## Example Demo
For more details on how to use the package check Medusa Admin Flutter which uses this package

[Medusa Admin Flutter](https://github.com/mllrr96/Medusa-Admin-Flutter)

## Resources

- [Medusa’s GitHub repository](https://github.com/medusajs/medusa)
- [Medusa Documentation](https://docs.medusajs.com/)
