
import 'dart:io' show FileSystemEntity, Directory;
import 'package:path/path.dart' show current, canonicalize, equals, join;

class Path {
  String _p;
  Path(this._p);
  /// Get the current working directory as a Path.
  Path.cwd() {
    this._p = current;
  }
  /// Get the root directory as a Path.
  Path.root() {
    this._p = "/";
  }
  /// List all files in a directory.
  List<FileSystemEntity> list() {
    return Directory(this._p).listSync();
  }
  /// Join two paths together with the + operator.
  Path operator +(Path p) => Path(join(_p, p._p));
  /// Check if two paths point to the same location.
  bool operator ==(dynamic p) => p is Path && equals(_p, p._p);
  int get hashCode => abs.hashCode;
  /// Get the absolute path as a string.
  String get abs => canonicalize(this._p);
}
