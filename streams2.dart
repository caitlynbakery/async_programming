void main() {
  Stream.fromIterable([1,2,3]);
  Stream.value(10);
  Stream.error(Exception('something went wrong'));
  Stream.empty();
  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  
}