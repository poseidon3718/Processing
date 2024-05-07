#define LINE_DETECT_WHITE 1
#define NO_LINE_SENSOR 5

int linesensor_data[NO_LINE_SENSOR] = {0,0,0,0,0};
int linesensor_pin[NO_LINE_SENSOR] = {2,3,4,5,6};

void read_line_sensor(void){
  int i;
  for(i=0;i<NO_LINE_SENSOR;i++){
    linesensor_data[i] = digitalRead(linesensor_pin[i]);
  }
}

void send_serial_data(void){
  int i;

  Serial.print("# ");
  for(i=0;i<NO_LINE_SENSOR;i++){
    Serial.print(linesensor_data[i]);
    Serial.print(" ");
  }
  Serial.println("*");
}

void setup() {
  int i;
  for(i=0;i<NO_LINE_SENSOR;i++){
    pinMode(linesensor_pin[i], INPUT);
  }
  Serial.begin(115200);
}

void loop() {
  read_line_sensor();
  send_serial_data();
  delay(500);
}
