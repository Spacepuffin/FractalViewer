/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:ControlPanel:211312:
  appc.background(230);
} //_CODE_:ControlPanel:211312:

public void selectFrac(GDropList source, GEvent event) { //_CODE_:fracSelect:284583:
  if (source.getSelectedIndex() == 0){
    cam.frac = sph;
  }
  if (source.getSelectedIndex() == 1){
    cam.frac = sie;
  }
  if (source.getSelectedIndex() == 2){
    cam.frac = man;
  }
} //_CODE_:fracSelect:284583:

public void setXPos(GTextField source, GEvent event) { //_CODE_:xPos:665882:
  float val = parseFloat(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    cam.pos.x = val;
    source.setFocus(false);
  }
} //_CODE_:xPos:665882:

public void setZPos(GTextField source, GEvent event) { //_CODE_:zPos:415086:
  float val = parseFloat(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    cam.pos.z = val;
    source.setFocus(false);
  }
} //_CODE_:zPos:415086:

public void setYPos(GTextField source, GEvent event) { //_CODE_:yPos:738380:
  float val = parseFloat(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    cam.pos.y = val;
    source.setFocus(false);
  }
} //_CODE_:yPos:738380:

public void setYaw(GTextField source, GEvent event) { //_CODE_:yawRot:415561:
  float val = parseFloat(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    cam.yaw = new PVector(0,1).rotate(val);
    source.setFocus(false);
  }
} //_CODE_:yawRot:415561:

public void setPitch(GTextField source, GEvent event) { //_CODE_:pitchRot:889742:
  float val = parseFloat(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    cam.pitch = val;
    source.setFocus(false);
  }
} //_CODE_:pitchRot:889742:

public void checkSetSpeed(GOption source, GEvent event) { //_CODE_:setSpeed:504149:
  cam.prop = false;
} //_CODE_:setSpeed:504149:

public void checkProSpeed(GOption source, GEvent event) { //_CODE_:proSpeed:221327:
  cam.prop = true;
} //_CODE_:proSpeed:221327:

public void setFixedSpeed(GTextField source, GEvent event) { //_CODE_:fixedSpeed:590181:
  float val = parseFloat(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val) && !cam.prop){
    cam.speed = val;
    source.setFocus(false);
  }
} //_CODE_:fixedSpeed:590181:

public void setPropSpeed(GTextField source, GEvent event) { //_CODE_:propSpeed:213154:
  float val = parseFloat(source.getText())/10.0;
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    cam.proSpeed = val;
    source.setFocus(false);
  }
} //_CODE_:propSpeed:213154:

public void setResolution(GTextField source, GEvent event) { //_CODE_:resolutionField:238014:
  int val = parseInt(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    resolution = val;
    gridSize = width/resolution;
    source.setFocus(false);
  }
} //_CODE_:resolutionField:238014:

public void setRenderDist(GTextField source, GEvent event) { //_CODE_:renderDistField:691087:
  int val = parseInt(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    renderDist = val;
    source.setFocus(false);
  }
} //_CODE_:renderDistField:691087:

public void setMaxRayStep(GTextField source, GEvent event) { //_CODE_:maxRayStepField:817634:
  int val = parseInt(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    iterations = val;
    source.setFocus(false);
  }
} //_CODE_:maxRayStepField:817634:

public void setPrecision(GTextField source, GEvent event) { //_CODE_:precField:689838:
  float val = parseFloat(source.getText())/10.0;
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    precision = val;
    source.setFocus(false);
  }
} //_CODE_:precField:689838:

public void setFOV(GTextField source, GEvent event) { //_CODE_:FOVField:888397:
  float val = parseFloat(source.getText())/10.0;
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    FOV = val;
    source.setFocus(false);
  }
} //_CODE_:FOVField:888397:

public void setSafety(GTextField source, GEvent event) { //_CODE_:safetyField:526414:
  float val = parseFloat(source.getText())/10.0;
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    safety = val;
    source.setFocus(false);
  }
} //_CODE_:safetyField:526414:

public void setPRes(GTextField source, GEvent event) { //_CODE_:PResField:931120:
  int val = parseInt(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    resolutionP = val;
    source.setFocus(false);
  }
} //_CODE_:PResField:931120:

public void setPRenDist(GTextField source, GEvent event) { //_CODE_:PRenDistField:816116:
  int val = parseInt(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    renderDistP = val;
    source.setFocus(false);
  }
} //_CODE_:PRenDistField:816116:

public void setPFOV(GTextField source, GEvent event) { //_CODE_:PFOVField:348850:
  float val = float(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    FOVP = val;
    source.setFocus(false);
  }
} //_CODE_:PFOVField:348850:

public void setPSnapTh(GTextField source, GEvent event) { //_CODE_:PSnapThField:528418:
  float val = float(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    precisionP = val;
    source.setFocus(false);
  }
} //_CODE_:PSnapThField:528418:

public void setPMaxRS(GTextField source, GEvent event) { //_CODE_:PMaxRSField:712641:
  int val = parseInt(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    iterationsP = val;
    source.setFocus(false);
  }
} //_CODE_:PMaxRSField:712641:

public void setPSafety(GTextField source, GEvent event) { //_CODE_:PSafetyField:680901:
  float val = float(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    safetyP = val;
    source.setFocus(false);
  }
} //_CODE_:PSafetyField:680901:

public void takePhoto(GButton source, GEvent event) { //_CODE_:photoButton:381071:
  takePicture = true;
} //_CODE_:photoButton:381071:

public void setPName(GTextField source, GEvent event) { //_CODE_:PNameField:841583:
  if (event == GEvent.ENTERED){
    nameP = source.getText();
    source.setFocus(false);
  }
} //_CODE_:PNameField:841583:

public void setFIteration(GTextField source, GEvent event) { //_CODE_:fIterationField:933208:
  int val = int(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    sie.iter = val;
    man.iter = val;
    source.setFocus(false);
  }
} //_CODE_:fIterationField:933208:

public void setSeparation(GTextField source, GEvent event) { //_CODE_:separField:544399:
  float val = float(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    sph.sep = val;
    source.setFocus(false);
  }
} //_CODE_:separField:544399:

public void setPower(GTextField source, GEvent event) { //_CODE_:powerField:554020:
  float val = float(source.getText());
  if (event == GEvent.ENTERED && !Float.isNaN(val)){
    man.power = val;
    source.setFocus(false);
  }
} //_CODE_:powerField:554020:

public void setTet(GCheckbox source, GEvent event) { //_CODE_:trueTet:341667:
  sie.tet = source.isSelected();
} //_CODE_:trueTet:341667:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Fractal Viewer");
  ControlPanel = GWindow.getWindow(this, "Controls", 0, 0, 325, 435, JAVA2D);
  ControlPanel.noLoop();
  ControlPanel.setActionOnClose(G4P.EXIT_APP);
  ControlPanel.addDrawHandler(this, "win_draw1");
  fracSelect = new GDropList(ControlPanel, 10, 25, 135, 80, 3, 10);
  fracSelect.setItems(loadStrings("list_284583"), 0);
  fracSelect.addEventHandler(this, "selectFrac");
  xPos = new GTextField(ControlPanel, 165, 70, 150, 15, G4P.SCROLLBARS_NONE);
  xPos.setPromptText("x");
  xPos.setOpaque(true);
  xPos.addEventHandler(this, "setXPos");
  fractalLabel = new GLabel(ControlPanel, 10, 5, 80, 20);
  fractalLabel.setText("Fractal:");
  fractalLabel.setOpaque(false);
  posLable = new GLabel(ControlPanel, 150, 50, 170, 20);
  posLable.setText("Position (WASD, Shift/Space):");
  posLable.setOpaque(false);
  zPos = new GTextField(ControlPanel, 165, 104, 150, 15, G4P.SCROLLBARS_NONE);
  zPos.setPromptText("z");
  zPos.setOpaque(true);
  zPos.addEventHandler(this, "setZPos");
  yPos = new GTextField(ControlPanel, 165, 87, 150, 15, G4P.SCROLLBARS_NONE);
  yPos.setPromptText("y");
  yPos.setOpaque(true);
  yPos.addEventHandler(this, "setYPos");
  x = new GLabel(ControlPanel, 150, 70, 10, 15);
  x.setText("x");
  x.setOpaque(false);
  y = new GLabel(ControlPanel, 150, 87, 10, 15);
  y.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  y.setText("y");
  y.setOpaque(false);
  z = new GLabel(ControlPanel, 150, 104, 10, 15);
  z.setText("z");
  z.setOpaque(false);
  rotLabel = new GLabel(ControlPanel, 150, 120, 160, 20);
  rotLabel.setText("Rotation (Arrow Keys):");
  rotLabel.setOpaque(false);
  yaw = new GLabel(ControlPanel, 150, 140, 30, 15);
  yaw.setText("Yaw");
  yaw.setOpaque(false);
  pitch = new GLabel(ControlPanel, 150, 157, 35, 15);
  pitch.setText("Pitch");
  pitch.setOpaque(false);
  yawRot = new GTextField(ControlPanel, 180, 140, 135, 15, G4P.SCROLLBARS_NONE);
  yawRot.setPromptText("yaw");
  yawRot.setOpaque(true);
  yawRot.addEventHandler(this, "setYaw");
  pitchRot = new GTextField(ControlPanel, 185, 157, 130, 15, G4P.SCROLLBARS_NONE);
  pitchRot.setPromptText("pitch");
  pitchRot.setOpaque(true);
  pitchRot.addEventHandler(this, "setPitch");
  graphLabel = new GLabel(ControlPanel, 10, 50, 120, 20);
  graphLabel.setText("Graphical Settings:");
  graphLabel.setOpaque(false);
  movSetLabel = new GLabel(ControlPanel, 150, 175, 160, 20);
  movSetLabel.setText("Movement Settings:");
  movSetLabel.setOpaque(false);
  togGroup1 = new GToggleGroup();
  setSpeed = new GOption(ControlPanel, 150, 195, 160, 20);
  setSpeed.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  setSpeed.setText("Fixed Velocity");
  setSpeed.setOpaque(false);
  setSpeed.addEventHandler(this, "checkSetSpeed");
  proSpeed = new GOption(ControlPanel, 150, 235, 160, 20);
  proSpeed.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  proSpeed.setText("Proportional Velocity");
  proSpeed.setOpaque(false);
  proSpeed.addEventHandler(this, "checkProSpeed");
  togGroup1.addControl(setSpeed);
  setSpeed.setSelected(true);
  togGroup1.addControl(proSpeed);
  fixedSpeed = new GTextField(ControlPanel, 190, 215, 125, 15, G4P.SCROLLBARS_NONE);
  fixedSpeed.setOpaque(true);
  fixedSpeed.addEventHandler(this, "setFixedSpeed");
  speed = new GLabel(ControlPanel, 150, 215, 50, 15);
  speed.setText("Speed");
  speed.setOpaque(false);
  speed2 = new GLabel(ControlPanel, 150, 255, 50, 15);
  speed2.setText("Speed");
  speed2.setOpaque(false);
  propSpeed = new GTextField(ControlPanel, 190, 255, 110, 15, G4P.SCROLLBARS_NONE);
  propSpeed.setOpaque(true);
  propSpeed.addEventHandler(this, "setPropSpeed");
  Percent = new GLabel(ControlPanel, 300, 255, 15, 15);
  Percent.setText("%");
  Percent.setOpaque(false);
  resoLabel = new GLabel(ControlPanel, 10, 70, 120, 20);
  resoLabel.setText("Resolution:");
  resoLabel.setOpaque(false);
  resolutionField = new GTextField(ControlPanel, 10, 90, 120, 15, G4P.SCROLLBARS_NONE);
  resolutionField.setOpaque(true);
  resolutionField.addEventHandler(this, "setResolution");
  rendDistLabel = new GLabel(ControlPanel, 10, 105, 120, 20);
  rendDistLabel.setText("Render Distance:");
  rendDistLabel.setOpaque(false);
  renderDistField = new GTextField(ControlPanel, 10, 125, 120, 15, G4P.SCROLLBARS_NONE);
  renderDistField.setOpaque(true);
  renderDistField.addEventHandler(this, "setRenderDist");
  maxIterLabel = new GLabel(ControlPanel, 10, 210, 120, 20);
  maxIterLabel.setText("Maximum Ray Steps:");
  maxIterLabel.setOpaque(false);
  maxRayStepField = new GTextField(ControlPanel, 10, 230, 120, 15, G4P.SCROLLBARS_NONE);
  maxRayStepField.setOpaque(true);
  maxRayStepField.addEventHandler(this, "setMaxRayStep");
  snapLabel = new GLabel(ControlPanel, 10, 175, 120, 20);
  snapLabel.setText("Ray Snap Threshold:");
  snapLabel.setOpaque(false);
  precField = new GTextField(ControlPanel, 10, 195, 120, 15, G4P.SCROLLBARS_NONE);
  precField.setOpaque(true);
  precField.addEventHandler(this, "setPrecision");
  FOVlabel = new GLabel(ControlPanel, 10, 140, 120, 20);
  FOVlabel.setText("Field of View");
  FOVlabel.setOpaque(false);
  FOVField = new GTextField(ControlPanel, 10, 160, 120, 15, G4P.SCROLLBARS_NONE);
  FOVField.setOpaque(true);
  FOVField.addEventHandler(this, "setFOV");
  safeLabel = new GLabel(ControlPanel, 10, 245, 120, 20);
  safeLabel.setText("Safety Factor:");
  safeLabel.setOpaque(false);
  safetyField = new GTextField(ControlPanel, 10, 265, 120, 15, G4P.SCROLLBARS_NONE);
  safetyField.setOpaque(true);
  safetyField.addEventHandler(this, "setSafety");
  photoLabel = new GLabel(ControlPanel, 10, 283, 80, 20);
  photoLabel.setText("Save Image:");
  photoLabel.setOpaque(false);
  pResLabel = new GLabel(ControlPanel, 10, 322, 70, 15);
  pResLabel.setText("Resolution:");
  pResLabel.setOpaque(false);
  PRenDistLabel = new GLabel(ControlPanel, 10, 339, 100, 15);
  PRenDistLabel.setText("Render Distance:");
  PRenDistLabel.setOpaque(false);
  PMaxRStepsLabel = new GLabel(ControlPanel, 10, 390, 90, 15);
  PMaxRStepsLabel.setText("Max Ray Steps:");
  PMaxRStepsLabel.setOpaque(false);
  PSnapThLabel = new GLabel(ControlPanel, 10, 373, 95, 15);
  PSnapThLabel.setText("Snap Threshold:");
  PSnapThLabel.setOpaque(false);
  PFOVlabel = new GLabel(ControlPanel, 10, 356, 80, 15);
  PFOVlabel.setText("Field of View:");
  PFOVlabel.setOpaque(false);
  PSafetyLabel = new GLabel(ControlPanel, 10, 407, 80, 15);
  PSafetyLabel.setText("Safety Factor:");
  PSafetyLabel.setOpaque(false);
  PResField = new GTextField(ControlPanel, 105, 322, 80, 15, G4P.SCROLLBARS_NONE);
  PResField.setOpaque(true);
  PResField.addEventHandler(this, "setPRes");
  PRenDistField = new GTextField(ControlPanel, 105, 339, 80, 15, G4P.SCROLLBARS_NONE);
  PRenDistField.setOpaque(true);
  PRenDistField.addEventHandler(this, "setPRenDist");
  PFOVField = new GTextField(ControlPanel, 105, 356, 80, 15, G4P.SCROLLBARS_NONE);
  PFOVField.setOpaque(true);
  PFOVField.addEventHandler(this, "setPFOV");
  PSnapThField = new GTextField(ControlPanel, 105, 373, 80, 15, G4P.SCROLLBARS_NONE);
  PSnapThField.setOpaque(true);
  PSnapThField.addEventHandler(this, "setPSnapTh");
  PMaxRSField = new GTextField(ControlPanel, 105, 390, 80, 15, G4P.SCROLLBARS_NONE);
  PMaxRSField.setOpaque(true);
  PMaxRSField.addEventHandler(this, "setPMaxRS");
  PSafetyField = new GTextField(ControlPanel, 105, 407, 80, 15, G4P.SCROLLBARS_NONE);
  PSafetyField.setOpaque(true);
  PSafetyField.addEventHandler(this, "setPSafety");
  TitleLabel = new GLabel(ControlPanel, 160, 10, 150, 15);
  TitleLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  TitleLabel.setText("FRACTAL VIEWER 1.0.0");
  TitleLabel.setOpaque(false);
  bylineLabel = new GLabel(ControlPanel, 175, 30, 120, 15);
  bylineLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  bylineLabel.setText("Jerry Guo, 2020");
  bylineLabel.setOpaque(false);
  photoButton = new GButton(ControlPanel, 105, 283, 80, 20);
  photoButton.setText("Snapshot");
  photoButton.addEventHandler(this, "takePhoto");
  PNameField = new GTextField(ControlPanel, 105, 305, 80, 15, G4P.SCROLLBARS_NONE);
  PNameField.setOpaque(true);
  PNameField.addEventHandler(this, "setPName");
  PNameLabel = new GLabel(ControlPanel, 10, 305, 80, 15);
  PNameLabel.setText("File Name:");
  PNameLabel.setOpaque(false);
  fracSetLabel = new GLabel(ControlPanel, 190, 280, 120, 20);
  fracSetLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  fracSetLabel.setText("Fractal Settings");
  fracSetLabel.setOpaque(false);
  iterLabel = new GLabel(ControlPanel, 190, 305, 60, 15);
  iterLabel.setText("Iterations:");
  iterLabel.setOpaque(false);
  fIterationField = new GTextField(ControlPanel, 250, 305, 65, 15, G4P.SCROLLBARS_NONE);
  fIterationField.setText("4");
  fIterationField.setOpaque(true);
  fIterationField.addEventHandler(this, "setFIteration");
  mandelbulbLabel = new GLabel(ControlPanel, 210, 390, 80, 20);
  mandelbulbLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  mandelbulbLabel.setText("Mandelbulb:");
  mandelbulbLabel.setOpaque(false);
  sphereLabel = new GLabel(ControlPanel, 210, 320, 80, 20);
  sphereLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sphereLabel.setText("Sphere:");
  sphereLabel.setOpaque(false);
  sepLabel = new GLabel(ControlPanel, 190, 340, 60, 15);
  sepLabel.setText("Spacing:");
  sepLabel.setOpaque(false);
  separField = new GTextField(ControlPanel, 250, 340, 65, 15, G4P.SCROLLBARS_NONE);
  separField.setOpaque(true);
  separField.addEventHandler(this, "setSeparation");
  powerLabel = new GLabel(ControlPanel, 190, 410, 60, 15);
  powerLabel.setText("Power:");
  powerLabel.setOpaque(false);
  powerField = new GTextField(ControlPanel, 250, 410, 65, 15, G4P.SCROLLBARS_NONE);
  powerField.setOpaque(true);
  powerField.addEventHandler(this, "setPower");
  sieLabel = new GLabel(ControlPanel, 190, 355, 120, 20);
  sieLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sieLabel.setText("Sierpinski:");
  sieLabel.setOpaque(false);
  tetGroup = new GToggleGroup();
  trueTet = new GCheckbox(ControlPanel, 195, 375, 120, 15);
  trueTet.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  trueTet.setText("True Tetrahedron");
  trueTet.setOpaque(false);
  trueTet.addEventHandler(this, "setTet");
  trueTet.setSelected(true);
  ControlPanel.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow ControlPanel;
GDropList fracSelect; 
GTextField xPos; 
GLabel fractalLabel; 
GLabel posLable; 
GTextField zPos; 
GTextField yPos; 
GLabel x; 
GLabel y; 
GLabel z; 
GLabel rotLabel; 
GLabel yaw; 
GLabel pitch; 
GTextField yawRot; 
GTextField pitchRot; 
GLabel graphLabel; 
GLabel movSetLabel; 
GToggleGroup togGroup1; 
GOption setSpeed; 
GOption proSpeed; 
GTextField fixedSpeed; 
GLabel speed; 
GLabel speed2; 
GTextField propSpeed; 
GLabel Percent; 
GLabel resoLabel; 
GTextField resolutionField; 
GLabel rendDistLabel; 
GTextField renderDistField; 
GLabel maxIterLabel; 
GTextField maxRayStepField; 
GLabel snapLabel; 
GTextField precField; 
GLabel FOVlabel; 
GTextField FOVField; 
GLabel safeLabel; 
GTextField safetyField; 
GLabel photoLabel; 
GLabel pResLabel; 
GLabel PRenDistLabel; 
GLabel PMaxRStepsLabel; 
GLabel PSnapThLabel; 
GLabel PFOVlabel; 
GLabel PSafetyLabel; 
GTextField PResField; 
GTextField PRenDistField; 
GTextField PFOVField; 
GTextField PSnapThField; 
GTextField PMaxRSField; 
GTextField PSafetyField; 
GLabel TitleLabel; 
GLabel bylineLabel; 
GButton photoButton; 
GTextField PNameField; 
GLabel PNameLabel; 
GLabel fracSetLabel; 
GLabel iterLabel; 
GTextField fIterationField; 
GLabel mandelbulbLabel; 
GLabel sphereLabel; 
GLabel sepLabel; 
GTextField separField; 
GLabel powerLabel; 
GTextField powerField; 
GLabel sieLabel; 
GToggleGroup tetGroup; 
GCheckbox trueTet; 
