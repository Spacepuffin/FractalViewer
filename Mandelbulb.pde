class Mandelbulb extends Fractal{
  float power = 8;
  Mandelbulb(){
    super("Mandelbulb", new PVector(0,0,0));
  }
  boolean fast = true;
  float dE (PVector point){ // This formula is ripped from http://blog.hvidtfeldts.net/index.php/2011/09/distance-estimated-3d-fractals-v-the-mandelbulb-different-de-approximations/
    PVector p = point.copy();
    float bailout = 4; // From what I could find on the internet, 4 is a pretty safe bailout. You can increase efficiency by making this more accurate, but if you make it too small you get errors.
    float dr = 1.0;
    float r = 0.0;
    for(int i=0; i< this.iter; i++){
      r = p.mag();
      if (r > bailout) break;
      dr = pow(r, power-1.0)*power*dr + 1.0;
      float th = acos(p.z/r);
      float ph = atan2(p.y,p.x);
      float pr = pow(r,power);
      th *= power;
      ph *= power;
      p = PVector.mult(new PVector(sin(th) * cos(ph), sin(ph)*sin(th), cos(th)),pr);
      p.add(point);
    }
    return 0.5 * log(r)* r/dr;
  }
}
