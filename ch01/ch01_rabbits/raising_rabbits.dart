import 'dart:math';

void main() {
  print("The number of rabbits increases as:\n");

  for (int years = 0; years <= 10; years++) {
    var n = (2 * pow(E, log(15) * years)).round().toInt(); 
    print("After $years years:\t $n animals");
  }
}

