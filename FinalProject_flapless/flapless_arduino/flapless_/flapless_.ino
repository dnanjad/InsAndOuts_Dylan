
const int SENSOR = A0; //sensor hooked up to analog pin A0
const int KNOB = A2; //potentiometer hooked up to analog pin A2
int photo_val = 0;
int pot_val = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode (KNOB, INPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  photo_val = analogRead(SENSOR); //read sensor and assign to variable called val
  photo_val = map(photo_val, 0, 1023, 0, 127); //maps val to 0-127
  
  pot_val = analogRead(KNOB); //read sensor and assign to variable called val2
  pot_val = map(pot_val, 0, 1023, 128, 255); //maps potentiometer values to 128-255
  delay(100); // Wait 100 milliseconds

  
 //Serial. println(photo_val); //to send human-readable data to Arduino monitor
Serial.write(photo_val);  //to send binary data to Processing
//  Serial.println(pot_val); //send val2 human-readable data to Arduino monitor
  Serial.write(pot_val); //send val2 as binary data to processing
}
