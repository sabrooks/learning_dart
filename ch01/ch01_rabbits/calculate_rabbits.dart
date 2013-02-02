import 'dart:math';

const int yearCount = 10;
const growthFactor = 15;

int calculateRabbits(int years) {
  return (2 * pow(E, log(growthFactor) * years)).round().toInt();
}

void main() {
  print("The number of rabbits increases as:\n");

  for (int years = 0; years <= yearCount; years++) {
    int rabbitCount = calculateRabbits(years); 
    print("After $years years:\t $rabbitCount animals");
  }
}




