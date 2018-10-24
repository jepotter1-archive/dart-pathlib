
# pathlib

Object-oriented filesystem paths for Dart inspired by Python3 `pathlib`.

## Example

```dart

import 'package:pathlib/pathlib.dart';

main() {
  var p = Path("lib");
  p += Path("src/pathlib_base.dart");
  print(p.abs);
  print(Path("/etc") == Path("/etc"));             // => true
  print(Path("/etc/../") == Path("/etc/passwd"));  // => false
}

```
