void Firkant(int n) {

  if (n>0) {
    square(n+n*100, n+n*100, 50);
    Firkant(n - 1);
  }
}
