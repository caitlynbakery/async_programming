Stream<String> fizzBuzz() async*{
  for(var i = 1; i <= 15; i++){
    await Future.delayed(Duration(milliseconds: 1000));
    if(i % 3 == 0 && i % 5 == 0){
     String fizzBuzz = 'fizz buzz';
     yield fizzBuzz;
    } else if (i % 3 == 0){
      yield 'fizz';
    } else if (i % 5 == 0){
      yield 'buzz';
    } else {
      yield '$i';
    }
  }
}



Future<void> main() async{
final fizzbuzz = fizzBuzz();
await for(var value in fizzbuzz) {
    print(value);
  }
}