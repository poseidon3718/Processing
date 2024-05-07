import processing.serial.*;
Serial port;

int[] line_sensor_data = new int[5];
String Serial_Data_String = null;
void setup(){
  int i;
  size(700,900);
  
  // port = new Serial(this,"COM5",115200);
  
  for(i=0;i<5;i++) line_sensor_data[i] = 0;
}

void draw(){
  background(255,255,255) ; 
  display_line_sensor_data();
}
void display_line_sensor_data(){
  fill(0,0,255);
  rect (250,350,200,50) ;
  
  line_sensor_data[0] = 1;
  line_sensor_data[1] = 1;
  line_sensor_data[2] = 1;
  line_sensor_data[3] = 1;
  line_sensor_data[4] = 1;
  
  if(line_sensor_data[0] == 1) fill(255,0,0); 
  else fill(255,255,255);
  ellipse(270,375,15,15);
  
  if(line_sensor_data[1] == 1) fill(255,0,0);
  else fill(255,255,255);
  ellipse(310,375,15,15);
  
  if(line_sensor_data[2] == 1) fill(255,0,0);
  else fill(255,255,255);
  ellipse(350,375,15,15); // center LED

  if(line_sensor_data[3] == 1) fill(255,0,0);
  else fill(255,255,255);
  ellipse(390,375,15,15);
  
  if(line_sensor_data[4] == 1) fill(255,0,0);
  else fill(255,255,255);
  ellipse(430,375,15,15);
  
  fill(0,0,255);
}

void serialEvent(Serial port){
  int i;
  Serial_Data_String = port.readStringUntil('\n');
  
  if(Serial_Data_String != null){
    print("input data : ");
    print(Serial_Data_String);
    
    Serial_Data_String = trim(Serial_Data_String);
    String [] values = split(Serial_Data_String, " ");
    
    if((values.length == 7) && (values[0].indexOf('#')==0) && (values[6].indexOf('*')==0)){
      // print(values[0]);
      //print(" ");
      //print(values[1]);
      //print(" ");
      //print(values[6]);
      //print(" \n");

      line_sensor_data[0] = int(values[1]);
      line_sensor_data[1] = int(values[2]);
      line_sensor_data[2] = int(values[3]);
      line_sensor_data[3] = int(values[4]);
      line_sensor_data[4] = int(values[5]);
      
      for(i=0;i<5;i++){
        line_sensor_data[i] = int(values[i+1]);
        print(values[i]); 
        print(" ");
      }
      print(" \n");
    }
  }
}
