DNA[] population = new DNA[100];



void setup() {
  for (int i = 0; i < population.length; i++) {
    population[i] = new DNA();
  }
}


void draw() {

  for (int i = 0; i < population.length; i++) {
    
    population[i].fitness();
    println("Total weight: " + population[i].totalWeight);
    println("Total value: " + population[i].totalValue);
    println("Score: " + population[i].score);
  }
}
