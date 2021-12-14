int Faktuel(int n) {
  int nu = 1;
  if (n > 0) {
    nu = n * Faktuel(n-1);
    return nu;
  } else {
    return nu;
  }
}
