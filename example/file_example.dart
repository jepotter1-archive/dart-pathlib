
import "package:pathlib/pathlib.dart";

main() {
  var a = Path.root();
  a += Path("etc");
  a += Path("passwd");
  print(a.file.readAsStringSync());
}