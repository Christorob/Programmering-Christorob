void branch(float x, float y, float h, float v, float growthFactor) {
  PVector branch = new PVector(0, -h);
  branch.rotate(radians(v));
  line(x, y, x+branch.x, y+branch.y);
  
  if (h>15) {
    if (number<=branchNo) {
      number++;
      branch(x+branch.x, y+branch.y, h*growthFactor, v-25+(mouseAngle/10), growthFactor);

      if (number<=branchNo) {
        number++;
        branch(x+branch.x, y+branch.y, h*growthFactor, v+25+(mouseAngle/10), growthFactor);

        if (number<=branchNo) {
          number++;
          branch(x+branch.x, y+branch.y, h*growthFactor, v+(mouseAngle/10), growthFactor/2);

          if (number<=branchNo) {
            number++;
            branch(x+branch.x, y+branch.y, h*growthFactor, v-10+(mouseAngle/10), growthFactor/2);

            if (number<=branchNo) {
              number++;
              branch(x+branch.x, y+branch.y, h*growthFactor, v+10+(mouseAngle/10), growthFactor/2);
            }
          }
        }
      }
    }
  }
}
