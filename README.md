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

## Reactive Programming

Reactive programming is when you declare a
set of rules/conditions for an action to occur. For
example, we don't need to set an image URL directly, but
have a condition for it to be assigned.

## Async/Await

Async and await can be used to replace `future.then(), catchError(), whenComplete()`.
It waits until a Future completes to run the code and can  handle error handling using
try/catch. The try/catch methods work well with async and await.

```dart
Future<void> main() async {
  print('Program started');
 try {final order = await fetchUserOrder();
  print(order);
  final order2 = await fetchUserOrder();
  print(order2);
  } catch(e){
    print(e);
  } }
```

## Streams

A stream is similar to an iterable, but it's async and we don't know the order of the values.
We can create a stream from an iterable using the `Stream.fromIterable` statement. We can also
reduce elements in a stream using `.reduce` on a stream. If we want to iterate through a Stream,
we have to use a for loop to loop through the values. Normally, when we create Stream functions, we
use Future as the type.

```dart
Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for(var value in stream) {
    sum += value;
  }
  return sum;
}

```
