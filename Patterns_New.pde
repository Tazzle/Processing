
void setup() {

  // run full-screen program on any display size
  size(displayWidth, displayHeight);

  //ensure draw() function doesn't run on continuous loop
  //noLoop();
  
}


void draw() {
  delay(900);
  
  //Orange, Red-Orange, and Yellow
  color[] ORY = new color [3];
  //orange
  ORY[0] = color(243, 133, 14);
  //red-orange
  ORY[1] = color(224, 99, 24);
  //yellow
  ORY[2] = color(255, 192, 21);

  //Purple, Green, and Orange
  color[] PGO = new color[3];
  //purple
  PGO[0] = color(100, 61, 154);
  //green
  PGO[1] = color(82, 164, 82);
  //orange
  PGO[2] = color(246, 153, 43);

  //Aqua, Lime-Green, and Green
  color[] ALG = new color[3];
  //aqua
  ALG[0] = color(75, 150, 169);
  //green
  ALG[1] = color(75, 169, 108);
  //lime-green
  ALG[2] = color(149, 203, 55);


 //Yellow, Violet and Purple-Blue
  color[] YVB = new color[3];
  //purple-blue
  YVB[0] = color(92, 72, 218);
  //violet
  YVB[1]= color(155, 68, 171);
  //yellow
  YVB[2]= color(249, 247, 98);

  //Green, Red-Orange and Violet
  color[] GOV = new color[3];
  //violet
  GOV[0] = color(155, 68, 171);
  //red-orange
  GOV[1] = color(224, 99, 24);
  //green
  GOV[2] = color(75, 169, 108);

  //Red-Orange, Purple-Blue and Lime-Green
  color[] RPL = new color[3];
  //red-orange
  RPL[0] = color(224, 99, 24);
  //purple-blue
  RPL[1] = color(92, 72, 218);
  //lime-green
  RPL[2] = color(149, 203, 55);


  int rand = floor(int(random(1, 7)));
  color[] randomColourArray = {
  };

  switch(rand) {

  case 1: 
    randomColourArray = ORY;
    break;

  case 2:
    randomColourArray = PGO;
    break;

  case 3:
    randomColourArray = ALG;
    break;
    
  case 4:
    randomColourArray = YVB;
    break;

  case 5:
    randomColourArray = GOV;
    break;

  case 6:
    randomColourArray = RPL;
  }


  //assigning colour and display preferences to the sketch
  background(randomColourArray[0]);
  fill(randomColourArray[1]);
  stroke(randomColourArray[2]);
  strokeWeight(2);
  rectMode(CENTER);
  smooth();
  
 
  float goldenRatioRight = ((sqrt(5)+1)/2);
  float goldenRatioLeft = ((3+sqrt(5))/2);   
  int randomNum = int(random(1, 16));
  int rectOrCircle = floor(random(0, 2));
  float[] centreOfScreen = { width/2, height/2, height/3, height/3 };
  float[] rightOfScreen = {width/goldenRatioRight, height/2, height/3, height/3};
  float[] leftOfScreen = {width/goldenRatioLeft, height/2, height/3, height/3};
  float[] startPosition = new float[4];
  
  if(randomNum > 0 && randomNum < 8) startPosition = centreOfScreen;
  else if(randomNum >= 8 && randomNum < 12) startPosition = rightOfScreen;
  else startPosition = leftOfScreen;
  
  if(rectOrCircle == 0)drawShape(startPosition, "circ", randomNum);
  else drawShape(startPosition, "rect", randomNum);
    
  //save each frame to PNG format in sketch folder
  saveFrame("output-######.png");
}


void drawShape(float[] coordinates, String shapeType, int designType){
    float x = coordinates[0];
    float y = coordinates[1];
    float width = coordinates[2];
    float height = coordinates[3];
    
    float[] recurRight = {x + width/2, y, height/2, height/2};
    float[] recurLeft = {x - width/2, y, height/2, height/2};
    float[] recurDown = {x, y + height/2, height/2, height/2};
    float[] recurUp = {x, y- height/2, height/2, height/2};
    
    if(shapeType == "circ"){ellipse(x, y, height, height);}
    else{rect(x, y, height, height);}
    
    if (width > 8 && height > 8) { 
    switch(designType){
         
   case 1:
       drawShape(recurRight, shapeType, designType);
       drawShape(recurLeft, shapeType, designType);
       drawShape(recurDown, shapeType, designType);
       drawShape(recurUp, shapeType, designType);      
    break;
    
    case 2:
      drawShape(recurRight, shapeType, designType);
      drawShape(recurLeft, shapeType, designType);
      drawShape(recurDown, shapeType, designType);
    break;
    
    case 3: 
      drawShape(recurRight, shapeType, designType);
      drawShape(recurLeft, shapeType, designType);
      drawShape(recurUp, shapeType, designType);
    break;
    
     case 4: 
      drawShape(recurRight, shapeType, designType);
      drawShape(recurLeft, shapeType, designType);     
    break;
    
     case 5:
      drawShape(recurDown, shapeType, designType);
      drawShape(recurUp, shapeType, designType);
    break;
    
     case 6:
      drawShape(recurDown, shapeType, designType);    
    break;
    
     case 7:
      drawShape(recurUp, shapeType, designType);    
    break; 

    case 8: 
      drawShape(recurRight, shapeType, designType);
      drawShape(recurDown, shapeType, designType);
      drawShape(recurUp, shapeType, designType);
      break;
    
    case 9: 
      drawShape(recurRight, shapeType, designType);
      drawShape(recurDown, shapeType, designType);
    break;
    
    case 10:
      drawShape(recurRight, shapeType, designType);
      drawShape(recurUp, shapeType, designType);    
    break;
    
    case 11: 
      drawShape(recurRight, shapeType, designType);    
    break;
    
    case 12:
      drawShape(recurLeft, shapeType, designType);
      drawShape(recurDown, shapeType, designType);
      drawShape(recurUp, shapeType, designType); 
    break;
    
    case 13:
      drawShape(recurLeft, shapeType, designType);
      drawShape(recurDown, shapeType, designType);
    break;
    
    case 14:
      drawShape(recurLeft, shapeType, designType);
      drawShape(recurUp, shapeType, designType);
    break;
    
     case 15:
      drawShape(recurLeft, shapeType, designType);    
    break; 
    
      }
      
 }
    
    
  
  
}