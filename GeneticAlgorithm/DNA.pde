class DNA {

  int[] genes;
  int[] weightIndex = new int[25];
  int[] valueIndex = new int[25];

  float fitness;
  float score = 0, totalWeight = 0, totalValue = 0, mutationRate = 0.01;

  //DNA Constructor; generates a random binary string of 24 1's or 0's. 
  //1 means that the item assocaited with it, in the index lists below is in the backpack, and 0 means it is not. 
  DNA() {
    genes = new int[24];
    for (int i = 0; i < genes.length; i++) {
      genes[i] = (int) random(0, 2);
    }
  }

  //Calculates the total weight of each individual backpack in the population:
  void calWeight() {
    for (int i = 0; i < genes.length; i++) {
      if (genes[i] == 1) {
        totalWeight += weightIndex[i];
      }
    }
  }

  //Calculates the total value of each individual backpack in the population:
  void calValue() {
    for (int i = 0; i < genes.length; i++) {
      if (genes[i] == 1) {
        totalValue += valueIndex[i];
      }
    }
  }

  //Detects if backpack is too heavy
  void fitness() {
    if (totalWeight < 5000) {
      score = totalValue;
    } else {
      score = 0;
    }
    println("Gene pos 1-24: " + genes[0] + genes[1] + genes[2] + genes[3] + genes[4] + genes[5] + genes[6] + genes[7] + genes[8] + genes[9]+ genes[10] + genes[11] + genes[12] + genes[13] + genes[14] + genes[15] + genes[16] + genes[17] + genes[18]+ genes[19] + genes[20] + genes[21] + genes[22] + genes[23]);
  }



  // Reproduction:
  DNA crossover(DNA parent) {

    //Child is "born" with random genes, but these will be replaced by mixing genes from parentA and parentB
    DNA child = new DNA(genes.length);

    //Random midpoint allows more variety in reproduction.
    int midpoint = int(random(genes.length));

    for (int i = 0; i < genes.length; i++) {
      if (i > midpoint) {
        child.genes[i] = genes[i];
      } else {
        child.genes[i] = parent.genes[i];
      }
    }
    return child;
  }


  //Mutation:
  void mutate() {
    for (int i = 0; i < genes.length; i++) {
      if (random(1) < mutationRate) {
        genes[i] = (int) random(0, 2);
        println("Mutation succesful! --------------------------------------------");
      }
    }
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
