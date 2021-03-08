# Async Programming

## Futures

A future can be assigned to a variable or method, so
that it gets a value after a certain condition. It may not
have a value immediately after the program starts.

```dart
Future<String> fetchUserOrder() => Future.delayed(
  Duration(seconds: 2),
  () => 'Cappucino'
);
```
