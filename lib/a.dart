import 'dart:math';

void main() {
  List<int> arr = [];
  for(var i = 0; i < 100; i++) {
    arr.add(Random().nextInt(100));
  }

  print(arr);
}
