
import "package:pathlib/pathlib.dart";

main() {
  var h = Path.home();
  var a = h + Path(".bashrc");
  var b = h + Path("Documents/../.bashrc");
  print(a == b); // => true
}