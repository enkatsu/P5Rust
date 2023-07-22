import com.sun.jna.Library;
import com.sun.jna.Native;

interface RsInterface extends Library {
  void hello();
  int add(int a, int b);
  float sum(float[] a, int len);
}

RsInterface buildRsInstance(String rsLibPath) {
  String absPath = sketchPath() + rsLibPath;
  return Native.load(absPath, RsInterface.class);
}
