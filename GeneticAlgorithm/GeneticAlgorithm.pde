DNA[] population = new DNA[2];

ArrayList<DNA> matingPool = new ArrayList<DNA>();


void setup() {
  for (int i = 0; i < population.length; i++) {
    population[i] = new DNA();
    population[i].indexSetup();
    population[i].calValue();
    population[i].calWeight();
  }
}


void draw() {
  for (int i = 0; i < population.length; i++) {
    println(i);
    population[i].fitness();
    println("Total weight: " + population[i].totalWeight);
    println("Total value: " + population[i].totalValue);
    println("Score: " + population[i].score);
  }
}

void reproduce() {
  //Selection for best parents:
    int n = int(population[i].fitness / 10);
    for (int j = 0; j < n; j++){
      matingPool.add(population[i]);
      println(population.length);
    }
    
    int a = int(random(matingPool.size()));
    int b = int(random(matingPool.size()));
    
    DNA parentA = matingPool.get(a);
    DNA parentB = matingPool.get(b);
    DNA child = parentA.crossover(parentB);
    child.mutate();

}
