String RS_LIBRALY_PATH = "/rust/target/release/librs.dylib";

void setup() {
  RsInterface rsInstance = buildRsInstance(RS_LIBRALY_PATH);
  rsInstance.hello();
  println(rsInstance.add(1, 2));
  
  int N = 200000;
  float[] vals = new float[N];
  for (int i = 0; i < N; i++) {
    vals[i] = 1.0;
  }
  
  println(rsInstance.sum(vals, vals.length));
}
