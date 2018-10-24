
import 'package:pathlib/pathlib.dart';

main() {

  // Easily create paths
  Path("/etc/passwd");
  Path.cwd(); // current directory
  Path.root(); // root directory

  // Easily work with paths
  Path("/etc") + Path("passwd");

  // Easily convert relative to absolute paths
  Path("lib/src/").abs;

  // Easily iterate paths
  for (var i in Path("/etc").list()) {
    print(i);
  }
}
