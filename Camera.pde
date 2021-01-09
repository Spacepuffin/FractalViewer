class Camera{
  PVector pos; //Positional coordinates
  PVector yaw = new PVector (0,1); //Direction being pointed at in XY (Horizontal) plane
  float pitch = 0; //Direction rotated vertically
  boolean prop = false;
  float proSpeed = 0.10;
  float speed = 0.05;
  float rspeed = 0.02;
  Fractal frac;
  Camera(PVector p, Fractal f){
    this.pos = p;
    this.frac = f; // camera can only see one fractal at a time.
  }
  
  void update(){
    if (prop){// if proportional speed, set speed to proportional speed
      this.speed = this.frac.dE(this.pos.copy())*this.proSpeed; 
    }
    float val;
    doMoveInputs();
    setGUIText();
    for (int i = 0; i< resolution; i++){
      for (int j = 0; j < resolution; j++){
        //create a direction vector for each pixel in a grid that is (res/FOV) units of distance in front of you
        PVector d = new PVector(i-resolution/2, resolution/FOV ,  -j+resolution/2);
        d.normalize();
        convertRotation(d);
        val = castRay(this.frac,this.pos,d);
        fill(color(255*pow(val,1.5)));
        rect(i*gridSize,j*gridSize,gridSize,gridSize);
      }
    }
  }
  
  float castRay(Fractal f, PVector p, PVector d){// cast rays... 
    //println(p,d,n);
    float totalDistance = 0;
    int n;
    for(n=0; n< iterations; n++){
      // base the ray on the original position every time to lessen accumulation of error
      PVector ray = PVector.add(p,PVector.mult(d,totalDistance)); 
      float dist = f.dE(ray)*safety; //safety factor to avoid overshooting
      totalDistance += dist; //move the ray by the estimated distance
      if (totalDistance > renderDist) return 0;
      if (dist <= precision) break;
    }
    return 1.0-float(n)/iterations; //return a value from 0 to 1 for brightness
  }
  
  void convertRotation(PVector d){ // convert from yaw and pitch to rotational coordinates.
    PVector temp = new PVector(d.y, d.z);
    temp.rotate(this.pitch);
    d.set(d.x, temp.x, temp.y);
    
    float y = new PVector(0,1).heading()-this.yaw.heading();//get yaw angle
    temp.set(d.x, d.y);
    //println(y);
    temp.rotate(y);
    d.set(temp.x, temp.y, d.z);
  }
  
  void doMoveInputs(){//convert keyboard presses to movement directions
    this.pitch +=(rotKeys[0] - rotKeys[1])*this.rspeed;
    this.pitch = min(PI/2,this.pitch);// limit pitch
    this.pitch = max(-PI/2,this.pitch);
    this.yaw.rotate((rotKeys[2] - rotKeys[3])*this.rspeed);
    PVector xy = new PVector(this.pos.x,this.pos.y);
    PVector ry = new PVector(-this.yaw.x,this.yaw.y);//reflect to make it work????
    xy.add(PVector.mult(ry,(moveKeys[2] - moveKeys[3])*this.speed));
    xy.add(PVector.mult(ry.copy().rotate(-PI/2),(moveKeys[4] - moveKeys[5])*this.speed));
    this.pos.set(xy.x,xy.y,this.pos.z);
    this.pos.z += (moveKeys[0] - moveKeys[1])*this.speed;
  }
  
  void setGUIText(){//If you try to change text in a text field while it has focus, you get a crash.
    if (!xPos.hasFocus()) xPos.setText(str(this.pos.x));
    if (!yPos.hasFocus()) yPos.setText(str(this.pos.y));
    if (!zPos.hasFocus()) zPos.setText(str(this.pos.z));
    if (!yawRot.hasFocus()) yawRot.setText(str(PVector.angleBetween(new PVector(0,1),this.yaw)));
    if (!pitchRot.hasFocus()) pitchRot.setText(str(this.pos.x));
  }
  
  
}
