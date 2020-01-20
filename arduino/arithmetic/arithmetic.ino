void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int number, res;
  String c;
  if (Serial.available())
  {
    c = Serial.readString();
    number = c.toInt();
    res = reverse_num(number);
    Serial.println(res);
  }
}

int reverse_num(int num)
{
  int digit = 0;
  int new_num = 0;
  while (num != 0)
  {
    digit = num % 10;
    new_num = new_num * 10 + digit;
    num /= 10;
  }
  return new_num;
}
