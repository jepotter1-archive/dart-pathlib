
import 'package:pathlib/pathlib.dart';

main() {
  var p = Path("lib");
  p += Path("src/pathlib_base.dart");
  print(p.abs);                                    // => /home/jwinnie/code/dart/pathlib/lib/src/pathlib_base.dart
  print(Path("/etc") == Path("/etc"));             // => true
  print(Path("/etc/../") == Path("/etc/passwd"));  // => false
}
