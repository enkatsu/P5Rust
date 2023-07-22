void setup() {
  RsInterface rsInstance = buildRsInstance(RS_LIBRALY_PATH);

  int N = 200000;
  
  int start, end;
  float[] vals = new float[N];
  for (int i = 0; i < N; i++) {
    vals[i] = 1.0;
  }
  
  start = millis();
  println(sum(vals));
  println(millis() - start);
  
  start = millis();
  println(sum(vals));
  println(millis() - start);
  
  start = millis();
  println(sum(vals));
  println(millis() - start);
  
  println("*****");

  start = millis();
  println(rsInstance.sum_all(vals, vals.length));
  println(millis() - start);
  
  start = millis();
  println(rsInstance.sum_all(vals, vals.length));
  println(millis() - start);
  
  start = millis();
  println(rsInstance.sum_all(vals, vals.length));
  println(millis() - start);
  
  for (int i = 0; i < N; i++) {
    vals[i] = 2.0;
  }
  
  start = millis();
  println(rsInstance.sum_all(vals, vals.length));
  println(millis() - start);
}

float sum(float[] vals) {
  float sum = 0.0;
  for (int i = 0; i < vals.length; i++) {
    sum += vals[i];
  }
  return sum;
}
