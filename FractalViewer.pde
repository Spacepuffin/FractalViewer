//This project heavily made use of information from Mikael Hvidtfeldt Christensen's
//blog about distance estimated 3d fractals.
//url: http://blog.hvidtfeldts.net/index.php/2011/06/distance-estimated-3d-fractals-part-i/
import g4p_controls.*;
int resolution = 60;
int renderDist = 50;
int iterations = 50; //Max iterations
float precision = 0.004; //How tolerant to render the fractal -- if this is too low, it will cause holes/gaps to appear, because of error.
float FOV = 1;
float safety = 0.9; //Turn this lower to reduce chance of overshooting. 

int[] rotKeys = new int[4]; //UP, DOWN, RIGHT, LEFT
int[] moveKeys = new int[6]; //SPACE, SHIFT, W, S, A, D

float gridSize;

Sphere sph = new Sphere();
Sierpinski sie = new Sierpinski();
Mandelbulb man = new Mandelbulb();

Camera cam = new Camera(new PVector(0, -2,0), sph);

//Photo variables
boolean takePicture;
int resolutionP = 600;
int renderDistP = 100;
int iterationsP = 100; //Max iterations
float precisionP = 0.004; //How tolerant to render the fractal -- if this is too low, it will cause holes/gaps to appear, because of error.
float FOVP = 1;
float safetyP = 0.5; //Turn this lower to reduce chance of overshooting. 
String nameP = "UntitledFractal";

void setup(){
  createGUI();
  size(600,600,P2D);
  noStroke();
  smooth(0);
  gridSize = width/resolution;
  
  //SET NONCHANGING GUI TEXT 
  fixedSpeed.setText(str(cam.speed));
  propSpeed.setText(str(cam.proSpeed*100));
  resolutionField.setText(str(resolution));
  renderDistField.setText(str(renderDist));
  maxRayStepField.setText(str(iterations));
  precField.setText(str(precision));
  FOVField.setText(str(FOV));
  safetyField.setText(str(safety));
  
  PResField.setText(str(resolutionP));
  PRenDistField.setText(str(renderDistP));
  PMaxRSField.setText(str(iterationsP));
  PSnapThField.setText(str(precisionP));
  PFOVField.setText(str(FOVP));
  PSafetyField.setText(str(safetyP));
  
  separField.setText(str(sph.sep));
  powerField.setText(str(man.power));
}

void draw(){
  if(takePicture){
    int resolutionO = resolution; //Save previous settings
    int renderDistO = renderDist;
    int iterationsO = iterations; 
    float precisionO = precision; 
    float FOVO = FOV;
    float safetyO = safety; 
    
    resolution = resolutionP; //Render Photo Settings
    gridSize = width/resolution;
    renderDist = renderDistP;
    iterations = iterationsP; 
    precision = precisionP; 
    FOV = FOVP;
    safety = safetyP; 
    
    background(0);
    cam.update(); //render the frame and save the image
    saveFrame("/Images/"+nameP + ".png");
    
    resolution = resolutionO; //Reset image settings
    gridSize = width/resolution;
    renderDist = renderDistO;
    iterations = iterationsO; 
    precision = precisionO; 
    FOV = FOVO;
    safety = safetyO; 
    takePicture = false;
  }
  else{
    cam.update();
  }
}

void keyPressed(){
  if (keyCode == UP) {
    rotKeys[0]= 1;
  }
  if (keyCode == DOWN) {
    rotKeys[1]= 1;
  } 
  if (keyCode == RIGHT) {
    rotKeys[2]= 1;
  }
  if (keyCode == LEFT) {
    rotKeys[3]= 1;
  } 
  if (keyCode == ' ') {
    moveKeys[0] = 1;
  }
  if (keyCode == SHIFT) {
    moveKeys[1] = 1;
  } 
  if (key == 'w' || key == 'W') {
    moveKeys[2] = 1;
  }
  if (key == 's' || key == 'S') {
    moveKeys[3] = 1;
  }
  if (key == 'd' || key == 'D') {
    moveKeys[4] = 1;
  }
  if (key == 'a' || key == 'A') {
    moveKeys[5] = 1;
  } 
}
  
void keyReleased(){
  if (keyCode == UP) {
    rotKeys[0]= 0;
  }
  if (keyCode == DOWN) {
    rotKeys[1]= 0;
  } 
  if (keyCode == RIGHT) {
    rotKeys[2]= 0;
  }
  if (keyCode == LEFT) {
    rotKeys[3]= 0;
  } 
  if (keyCode == ' ') {
    moveKeys[0] = 0;
  }
  if (keyCode == SHIFT) {
    moveKeys[1] = 0;
  } 
  if (key == 'w' || key == 'W') {
    moveKeys[2] = 0;
  }
  if (key == 's' || key == 'S') {
    moveKeys[3] = 0;
  }
  if (key == 'd' || key == 'D') {
    moveKeys[4] = 0;
  }
  if (key == 'a' || key == 'A') {
    moveKeys[5] = 0;
  } 
  
}
