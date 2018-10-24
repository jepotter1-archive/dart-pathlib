
import "package:pathlib/pathlib.dart";

main() {
  var a = Path.root();
  a += Path("etc");
  a += Path("apt");
  print(a.dir.listSync()); // => [File: '/etc/apt/apt.conf', Directory: '/etc/apt/sources.list.d', ...]
}
