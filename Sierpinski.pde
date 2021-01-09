class Sierpinski extends Fractal{
  boolean tet = true;
  PVector pA = new PVector(1,1,1); // tetrahedron inscribed on 2x2x2 cube centered at 0,0,0
  PVector pB = new PVector(-1,-1,1);
  PVector pC = new PVector(1,-1,-1);
  PVector pD = new PVector(-1,1,-1);
  Sierpinski(){
    super("Sierpinski", new PVector(1,1,1));
  }
  float dE(PVector p){
     int n;
     for (n = 0; n < this.iter-1; n++) {
       PVector pClosest = pA; //Find the closest point on the base tetrahedron to the final point.
        float r = PVector.dist(p,pA);
        float temp = PVector.dist(p,pB);
        if (temp < r){
          pClosest = pB;
          r = temp;
        }
        temp = PVector.dist(p,pC);
        if (temp < r){
          pClosest = pC;
          r = temp;
        }
        temp = PVector.dist(p,pD);
        if (temp < r){
          pClosest = pD;
        }
        p.mult(2);
        p.sub(pClosest);
    }

    if (tet){ // this will draw the actual tetrahedra rather than spheres.
    //Only noticable if iter is small (<10), when you can see the individual tetrahedra.
      float q;
      if (n == 0){q = sqrt(3)/3;}
      else {q = sqrt(3)/3 /pow(2,n/n-1);} // q is "radius" of the face of the tetrahedron.
      float dist = max(max(PVector.dot(p, PVector.mult(pA,-1).normalize())-q,
                           PVector.dot(p, PVector.mult(pB,-1).normalize())-q),max(
                           PVector.dot(p, PVector.mult(pC,-1).normalize())-q,
                           PVector.dot(p, PVector.mult(pD,-1).normalize())-q));
      return dist/ pow(2, n);
    }
    return p.mag() / pow(2,n);
  }
}
