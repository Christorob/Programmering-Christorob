DNA[] population = new DNA[100];



void setup() {
  for (int i = 0; i < population.length; i++) {
    population[i] = new DNA();
  }
}


void draw() {

  for (int i = 0; i < population.length; i++) {
    
    population[i].indexSetup();
    population[i].fitness();
  }
}
