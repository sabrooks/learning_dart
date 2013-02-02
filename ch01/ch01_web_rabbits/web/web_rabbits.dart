import 'dart:html';
import 'dart:math';

const int yearCount = 10;
const growthFactor = 15;

int calculateRabbits(int years) {
  return (2 * pow(E, log(growthFactor) * years)).round().toInt();
}

webRabbits() {
  // binding variables to html elements:
  InputElement yearsInput = query("#years");
  LabelElement output = query("#output");
  // getting input
  String yearsString = yearsInput.value;
  int years = int.parse(yearsString);
  // calculating and setting output:
  output.innerHtml = "${calculateRabbits(years)}";
}

void main() {
  query("#submit").onClick.listen( (e) => webRabbits() );
}

