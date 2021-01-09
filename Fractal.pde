class Fractal{
  String fracType;
  PVector origin;
  float iter = 4;
  Fractal(String t, PVector o){
    this.fracType = t;
    this.origin = o;
  }
  float dE(PVector p){
    println("Error, undefined fractal");
    return 0;
  }
}
