void tree(float x, float y, float growthFactor) {

branch(x, y, 200, mouseAngle/20, growthFactor);
  mouseAngle = mouseX-width/2;
  if (frameCount % 1 == 0) {
    branchNo++;
  } 
}
