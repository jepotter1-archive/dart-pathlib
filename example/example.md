
# Examples

```dart
import "package:pathlib/pathlib.dart";

main() {
  var a = Path.root();
  a += Path("etc");
  a += Path("passwd");
  print(a.file.readAsStringSync());
}
```

```dart
import "package:pathlib/pathlib.dart";

main() {
  var h = Path.home();
  var a = h + Path(".bashrc");
  var b = h + Path("Documents/../.bashrc");
  print(a == b); // => true
}
```

```dart
import "package:pathlib/pathlib.dart";

main() {
  var a = Path.root();
  a += Path("etc");
  a += Path("apt");
  print(a.dir.listSync()); // => [File: '/etc/apt/apt.conf', Directory: '/etc/apt/sources.list.d', ...]
}
```