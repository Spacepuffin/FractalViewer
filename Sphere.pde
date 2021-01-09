class Sphere extends Fractal{
  float sep = 5;
  Sphere(){
    super("Sphere", new PVector(0,0,0));
  }
  float dE(PVector p){//distance estimator function
    //println(p.x,p.x%3);
    PVector adj = new PVector(1,1,1);
    if(p.x>0) adj.x=-1; // fold 1
    if(p.y>0) adj.y=-1; // fold 2
    if(p.z>0) adj.z=-1; // fold 3
    p.x = p.x % this.sep + this.sep/2*adj.x;
    p.y = p.y % this.sep + this.sep/2*adj.y;
    p.z = p.z % this.sep + this.sep/2*adj.z;
    
    //println("a",p.mag());
    return p.mag() - 1; //In sphere, scale is the radius of the sphere
  }
}
