void setup() {
  rekursiv(5);
}


int rekursiv(int i) {
  if (i > 0)
    i = rekursiv(i - 1);
  println(i);
  return i;
}
