ArrayList <DNA> population = new ArrayList <DNA>();
ArrayList<DNA> matingPool = new ArrayList<DNA>();

void setup() {
  for (int i = 0; i < 10; i++) {
    DNA temp = new DNA();
    temp.indexSetup();
    temp.calValue();
    population.add(temp);
    
  }
}


void draw() {
  for (int i = 0; i < population.size(); i++) {
    println("Current individual: " + (i + 1));

    //Calculate fitness:
    population.get(i).fitness();

    //For testing purposes:
    println("Total weight: " + population.get(i).totalWeight);
    println("Total value: " + population.get(i).totalValue);
    println("Score: " + population.get(i).score);
  }
  

  //Selection for best parents:
  for (int i = 0; i < population.size(); i++) {

    int n = int(population.get(i).score );

    for (int j = 0; j < n; j++) {
      matingPool.add(population.get(i));
      println("Total population: " + population.size());
    }
  }
  
  for (int i = 0; i < population.size(); i++) {
    int a = int(random(matingPool.size()));
    int b = int(random(matingPool.size()));

    DNA parentA = matingPool.get(a);
    DNA parentB = matingPool.get(b);
    DNA child = parentA.crossover(parentB);
    child.mutate();

    population.remove(i);
    population.add(i, child);
    
  }
}
