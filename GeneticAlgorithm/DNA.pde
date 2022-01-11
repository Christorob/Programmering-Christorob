class DNA {

  int[] genes = new int[24];
  int[] weightIndex = new int[25];
  int[] valueIndex = new int[25];

  float fitness;
  int score, totalWeight, totalValue;

  DNA() {
    for (int i = 0; i < genes.length; i++) {
      genes[i] = (int) random(0, 1);
    }
  }


  void calWeight() {
    for (int i = 0; i < genes.length; i++) {
      if (genes[i] == 1) {
        totalWeight += weightIndex[i];
      }
    }
  }

  void calValue() {
    for (int i = 0; i < genes.length; i++) {
      if (genes[i] == 1) {
        totalValue += valueIndex[i];
      }
    }
  }

  void fitness() {
    indexSetup();
    calValue();
    calWeight();
    score = totalValue / (1 + totalWeight);
  }

  //Manual weightIndex and valueIndex setup:
  void indexSetup() {
    weightIndex[1] = 90;
    weightIndex[2] = 130;
    weightIndex[3] = 1530;
    weightIndex[4] = 500;
    weightIndex[5] = 150;
    weightIndex[6] = 680;
    weightIndex[7] = 270;
    weightIndex[8] = 390;
    weightIndex[9] = 230;
    weightIndex[10] = 520;
    weightIndex[11] = 110;
    weightIndex[12] = 320;
    weightIndex[13] = 240;
    weightIndex[14] = 480;
    weightIndex[15] = 730;
    weightIndex[16] = 420;
    weightIndex[17] = 430;
    weightIndex[18] = 220;
    weightIndex[19] = 70;
    weightIndex[20] = 180;
    weightIndex[21] = 40;
    weightIndex[22] = 300;
    weightIndex[23] = 900;
    weightIndex[24] = 2000;

    valueIndex[1] = 150;
    valueIndex[2] = 35;
    valueIndex[3] = 200;
    valueIndex[4] = 160;
    valueIndex[5] = 60;
    valueIndex[6] = 45;
    valueIndex[7] = 60;
    valueIndex[8] = 40;
    valueIndex[9] = 30;
    valueIndex[10] = 10;
    valueIndex[11] = 70;
    valueIndex[12] = 30;
    valueIndex[13] = 15;
    valueIndex[14] = 10;
    valueIndex[15] = 40;
    valueIndex[16] = 70;
    valueIndex[17] = 75;
    valueIndex[18] = 80;
    valueIndex[19] = 20;
    valueIndex[20] = 12;
    valueIndex[21] = 50;
    valueIndex[22] = 10;
    valueIndex[23] = 1;
    valueIndex[24] = 150;
  }
}
