void test1() {
  int test1 = cityList.length;
  println(test1);
}

void test2() {
  int cityPos = 0;
  int charPos = 0;
  char test2 = cityList[cityPos].charAt(charPos);
  println(test2);
}

void test3(String testInput) {
  String testOutput;
  if (textboxes.get(0).Text.length() > 2) {
    testOutput = "Longer than 2";
  } else if (textboxes.get(0).Text.length() == 2) {
    testOutput = "Equal to 2";
  } else {
    testOutput = "Shorter than 2";
  }
  println(testOutput);
}
