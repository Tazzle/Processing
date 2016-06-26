
    void setup() {

  // run full-screen program on any display size
  size(displayWidth, displayHeight);

  //ensure draw() function doesn't run on continuous loop
  //noLoop();
  
}


void draw() {
  delay(900);
  
  //create six different arrays containing colours that complement each other/ create six colour schemes
  //create array of colours containing Orange, Red-Orange, and Yellow
  color[] ORY = new color [3];
  //orange
  ORY[0] = color(243, 133, 14);
  //red-orange
  ORY[1] = color(224, 99, 24);
  //yellow
  ORY[2] = color(255, 192, 21);

  //create array of colours contatining Purple, Green, and Orange
  color[] PGO = new color[3];
  //purple
  PGO[0] = color(100, 61, 154);
  //green
  PGO[1] = color(82, 164, 82);
  //orange
  PGO[2] = color(246, 153, 43);

  //create array of colours containing Aqua, Lime-Green, and Green
  color[] ALG = new color[3];
  //aqua
  ALG[0] = color(75, 150, 169);
  //green
  ALG[1] = color(75, 169, 108);
  //lime-green
  ALG[2] = color(149, 203, 55);


  //create array of colours containing Yellow, Violet and Purple-Blue
  color[] YVB = new color[3];
  //purple-blue
  YVB[0] = color(92, 72, 218);
  //violet
  YVB[1]= color(155, 68, 171);
  //yellow
  YVB[2]= color(249, 247, 98);


  //create array of colours containing Green, Red-Orange and Violet
  color[] GOV = new color[3];
  //violet
  GOV[0] = color(155, 68, 171);
  //red-orange
  GOV[1] = color(224, 99, 24);
  //green
  GOV[2] = color(75, 169, 108);

  //create array of colours containing Red-Orange, Purple-Blue and Lime-Green
  color[] RPL = new color[3];
  //red-orange
  RPL[0] = color(224, 99, 24);
  //purple-blue
  RPL[1] = color(92, 72, 218);
  //lime-green
  RPL[2] = color(149, 203, 55);



  //randomize a number between 1 and 6 and link the result to the six pre-defined colour arrays using switch() 
  //this ensures a random colour scheme out of the predefined 6 will be generated each time the program is run
  //use floor() to ensure result is rounded down to an integer
  int newRandom = floor(int(random(1, 7)));

  //before switch function need to first define new array for assigning old colour array values to
  color[] randomArray = {
  };


  switch(newRandom) {

    // if the result of colourPicker is 1, assign the ORY array content to the new array randomArray
  case 1: 
    randomArray = ORY;

    break;

    // if the result of colourPicker is 2, assign the PGO array content to the new array randomArray
  case 2:
    randomArray = PGO;

    break;

    // if the result of colourPicker is 3, assign the ALG array content to the new array randomArray
  case 3:
    randomArray = ALG;

    break;

    // if the result of colourPicker is 4, assign the YVB array content to the new array randomArray
  case 4:
    randomArray = YVB;

    break;

    // if the result of colourPicker is 5, assign the GOV array content to the new array randomArray
  case 5:

    randomArray = GOV;
    break;

    // if the result of colourPicker is 6, assign the RPL array content to the new array randomArray
  case 6:
    randomArray = RPL;
  }


  //assigning colour and display preferences to the sketch
  background(randomArray[0]);
  fill(randomArray[1]);
  stroke(randomArray[2]);
  strokeWeight(2);
  rectMode(CENTER);
  smooth();
  
 
  //creating variables for use in coordinates
  float goldenRatioRight = ((sqrt(5)+1)/2);
  float goldenRatioLeft = ((3+sqrt(5))/2);
    
    
  //randomize a number between 1 and 15 to link to the 30 functions using switch()
  //this will ensure a random image out of the predefined 30 is generated each time the program is run
  int randomNum = int(random(1, 16));
  //get random number between 0 and 1 to decide which geometric shape to use
  int rectOrCircle = floor(random(0, 2));
  
  
  
  float[] numbers1 = { width/2, height/2, height/3, height/3 };
  float[] numbers2 = {width/goldenRatioRight, height/2, height/3, height/3};
  float[] numbers3 = {width/goldenRatioLeft, height/2, height/3, height/3};


  switch(randomNum) {

  //if randomNum result is 1:
  case 1:   
   //if number is 0, draw circle shape
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 1);
    }
    //otherwise, draw rectangle shape
    else {
      drawShape(numbers1, "rect", 1);
    }
    break;


  case 2:
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 2);
    }
    else {
      drawShape(numbers1, "rect", 2);
    }
    break;
    

  case 3:
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 3);
    }
    else {
      drawShape(numbers1, "rect", 3);
    }

    break;

  case 4:
    if (rectOrCircle == 0) {
      drawShape(numbers2, "circ",4);
    }
    else {
      drawShape(numbers2, "rect",4);
    }
    break;


  case 5:
    if (rectOrCircle == 0) {
      drawShape(numbers3, "circ", 5);
    }
    else {
      drawShape(numbers3, "rect", 5);
    }
    break;


  case 6:
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 6);
    }
    else {
      drawShape(numbers1, "rect", 6);
    }

    break;


  case 7:
    if (rectOrCircle == 0) {
      drawShape(numbers2, "circ", 7);
    }
    else {
      drawShape(numbers2, "rect", 7);
    }
    break;


  case 8:
    if (rectOrCircle == 0) {
      drawShape(numbers2, "circ", 8);
    }
    else {
      drawShape(numbers2, "rect", 8);
    }
    break;

  case 9:
    if (rectOrCircle == 0) {
      drawShape(numbers3, "circ", 9);
    }
    else {
      drawShape(numbers3, "rect", 9);
    }
    break;


  case 10:
    if (rectOrCircle == 0) {
      drawShape(numbers3, "circ", 10);
    }
    else {
      drawShape(numbers3, "rect", 10);
    }
    break;


  case 11:
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 11);
    }
    else {
      drawShape(numbers1, "rect", 11);
    }

    break;

  case 12:
    if (rectOrCircle == 0) {
      drawShape(numbers2, "circ", 12);
    }
    else {
      drawShape(numbers2,"rect", 12);
    }
    break;


  case 13:
    if (rectOrCircle == 0) {
      drawShape(numbers3, "circ", 13);
    }
    else {
      drawShape(numbers3, "rect",13);
    }
    break;


  case 14:
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 14);
    }
    else {
      drawShape(numbers1, "rect", 14);
    }

    break;


  case 15:
    if (rectOrCircle == 0) {
      drawShape(numbers1, "circ", 15);
    }
    else {
      drawShape(numbers1, "rect", 15);
    }

    break;
  } 
  
  //save each frame to PNG format in sketch folder
  saveFrame("output-######.png");
}

void drawShape(float[] numbers, String shapeType, int designType){
    float x = numbers[0];
    float y = numbers[1];
    float width = numbers[2];
    float height = numbers[3];
    
    float[] recurse1 = {x + width/2, y, height/2, height/2};
    float[] recurse2 = {x - width/2, y, height/2, height/2};
    float[] recurse3 = {x, y + height/2, height/2, height/2};
    float[] recurse4 = {x, y- height/2, height/2, height/2};
    
    if(shapeType == "circ"){ellipse(x, y, height, height);}
    else{rect(x, y, height, height);}
    
    if (width > 8 && height > 8) {
         
      if(designType == 1){
       drawShape(recurse1, shapeType, designType);
       drawShape(recurse2, shapeType, designType);
       drawShape(recurse3, shapeType, designType);
       drawShape(recurse4, shapeType, designType);      
    }
    
    if(designType == 2){
      drawShape(recurse1, shapeType, designType);
      drawShape(recurse2, shapeType, designType);
      drawShape(recurse3, shapeType, designType);
    }
    
    if(designType == 3) {
      drawShape(recurse1, shapeType, designType);
      drawShape(recurse2, shapeType, designType);
      drawShape(recurse4, shapeType, designType);
    }
    
    if(designType == 4){
      drawShape(recurse1, shapeType, designType);
      drawShape(recurse3, shapeType, designType);
      drawShape(recurse4, shapeType, designType);
      
    }
    
    if(designType == 5){
      drawShape(recurse2, shapeType, designType);
      drawShape(recurse3, shapeType, designType);
      drawShape(recurse4, shapeType, designType); 
    }
    
    if(designType == 6) {
      drawShape(recurse1, shapeType, designType);
      drawShape(recurse2, shapeType, designType);     
    }
    
    if(designType == 7){
      drawShape(recurse1, shapeType, designType);
      drawShape(recurse3, shapeType, designType);
    }
    
    if(designType == 8){
      drawShape(recurse1, shapeType, designType);
      drawShape(recurse4, shapeType, designType);    
    }
    
    if(designType == 9){
      drawShape(recurse2, shapeType, designType);
      drawShape(recurse3, shapeType, designType);
    }
    
    if(designType == 10){
      drawShape(recurse2, shapeType, designType);
      drawShape(recurse4, shapeType, designType);
    }
    
     if(designType == 11){
      drawShape(recurse3, shapeType, designType);
      drawShape(recurse4, shapeType, designType);
    }
    
    if(designType == 12){
      drawShape(recurse1, shapeType, designType);    
    }
    
     if(designType == 13){
      drawShape(recurse2, shapeType, designType);    
    }
    
     if(designType == 14){
      drawShape(recurse3, shapeType, designType);    
    }
    
     if(designType == 15){
      drawShape(recurse4, shapeType, designType);    
    }  
      
 }
    
    
  
  
}