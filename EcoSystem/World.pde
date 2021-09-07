class World{ // Class
  
  ArrayList<WorldObject> list = new ArrayList<WorldObject>();    //Arrayliste over objekter
  
    
  void createSump(float x, float y){
      Sump s = new Sump();
      s.x = x;
      s.y = y;
      list.add(s);
  }
  
  
  void createKo(float x, float y){
      Ko k = new Ko();
      k.x = x;
      k.y = y;
      list.add(k);
  }

    void createKat(float x, float y){
      Kat k = new Kat();
      k.x = x;
      k.y = y;
      list.add(k);
  }


    void createBusk(float x, float y){
      Busk b = new Busk(x,y);
      list.add(b);
  }

   void createPalme(float x, float y){
      Palme p = new Palme(x,y);
      list.add(p);
  }
  
  
  void displayAndUpdate(){          // Skaber den nye funktion 'displayAndUpdate'.
    for(WorldObject o : list){      // For loop, som går gennem arraylisten af alle WorldObject objekter, og dermed udfører display() og update() for hvert objekt.
      o.display();
      o.update();
         for(WorldObject o2 : list){ // For loop, som skaber kollision
             o.hitHandle(o2);  
         }      
    }
    
   
    
    
  }
}
