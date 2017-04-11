class CitySystem {
  //creating skyCount variable for array length of Sky
  int skyCount = 20;
  //creating starCount variable for array length of Star
  int starCount = 1000;
  //declaring array of Sky objects 
  Sky[][] layers = new Sky[4][skyCount];
  //declaring array of Stars objects
  Star[][] shine = new Star[4][starCount];

  CitySystem() {
    for (int i = 0; i < skyCount; i ++) {
      for (int j = 0; j < 4; j++) {
        layers[j][i] = new Sky(new PVector(-1300, 60*i, -1300), width*3.3, 60, color(255-9*i, opaSky));
      }
    }
    for (int i = 0; i < starCount; i ++) {
      for (int j = 0; j < 4; j++) {
        shine[j][i] = new Star(new PVector(random(8000), random(5000)), int(random(1, 5)));
      }
    }
  }

  void display() {
    for (int h = 0; h < skyCount; h ++) {
      for (int i = 0; i < starCount; i ++) {
        for (int j = 0; j < 4; j++) {
          if (j==0){
          } else if (j==1){
            rotateY(PI/2);
          } else if (j==2){
            rotateY(PI);
          } else if (j==3){
            rotateY(PI+PI/2);
          }
          shine[j][i].update();
          shine[j][i].display();
          layers[j][h].display();
        }
      }
      //for (int i = 0; i < skyCount; i ++) {
      //  for (int j = 0; j < 4; j++){
      //  layers[j][i].display();
      //}
      //}
    }
  }
}