import com.sun.jna.Library;
import com.sun.jna.Native;

static final String RS_LIBRALY_PATH = "/rust/target/release/librs.dylib";

public interface RsInterface extends Library {
  void hello();
  int sum(int a, int b);
  float sum_all(float[] a, int len);
}

RsInterface buildRsInstance(String rsLibPath) {
  String absPath = sketchPath() + rsLibPath;
  return Native.load(absPath, RsInterface.class);
}
