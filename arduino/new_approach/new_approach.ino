void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  String str, res;
  if (Serial.available())
  {
    str = Serial.readString();
    res = reverse_str(str);
    Serial.println(res);
  }
}

String reverse_str(String str)
{
  String cpy_str;
  cpy_str = str;
  int len = cpy_str.length();
  int i = 0;
  char c;
  int symmetry;
  for (i = 0; i < int(len / 2); i++)
  {
    symmetry = len - 1 - i;
    c = cpy_str[i];
    cpy_str[i] = cpy_str[symmetry];
    cpy_str[symmetry] = c;
  }
  return cpy_str;
}

