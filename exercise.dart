Future<String> countdown(int n) async{ 
    while(n > 0){
      await Future.delayed(Duration(seconds: 1));
    print(n);
    n--;
  };
 
  return 'done';
}

void main() {
  countdown(3);
}