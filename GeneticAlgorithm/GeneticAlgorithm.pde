DNA[] population = new DNA[100];

void setup() {
  for (int i = 0; i < population.length; i++) {
    population[i] = new DNA();
    population[i].indexSetup();
    population[i].calValue();
  }
}


void draw() {
  for (int i = 0; i < population.length; i++) {
    println("Current individual: " + (i + 1));

    //Calculate fitness:
    population[i].fitness();

    //For testing purposes:
    println("Total weight: " + population[i].totalWeight);
    println("Total value: " + population[i].totalValue);
    println("Score: " + population[i].score);
  }
  ArrayList<DNA> matingPool = new ArrayList<DNA>();

  //Selection for best parents:
  for (int i = 0; i < population.length; i++) {
    int n = int(population[i].fitness / 100);

    for (int j = 0; j < n; j++) {
      matingPool.add(population[i]);
      println("Total population: " + population.length);
    }
  }
  
  for (int i = 0; i < population.length; i++) {
    int a = int(random(matingPool.size()));
    int b = int(random(matingPool.size()));

    DNA parentA = matingPool.get(a);
    DNA parentB = matingPool.get(b);
    DNA child = parentA.crossover(parentB);
    child.mutate();

    population[i] = child;
    

    
  }
}
