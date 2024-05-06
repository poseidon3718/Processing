int ultrasonic_data[2];

void setup() {
  // put your setup code here, to run once:
 Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:


  Serial.print("# ");                 // Start Byte
  Serial.print(ultrasonic_data[0]);     // Data Byte 
  Serial.print(" ");                 // Start Byte
  Serial.print(ultrasonic_data[1]);     // Data Byte 
  Serial.println(" *");               // End Byte  
  delay(500);
  ultrasonic_data[0]++;
  ultrasonic_data[1]+=2;
  
  if(ultrasonic_data[0]>180)  ultrasonic_data[0] =0;
  if(ultrasonic_data[1]>180)  ultrasonic_data[1] =0;
}
