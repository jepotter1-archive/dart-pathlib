
import "dart:io" show
  Directory,
  File,
  Platform;
import "package:path/path.dart" show
  current,
  canonicalize,
  equals,
  join;

class Path {
  String _p;

  /// Create a new Path from a String.
  Path(this._p);

  /// Get the current working directory as a Path.
  Path.cwd() {
    this._p = current;
  }

  /// Get the root directory as a Path.
  Path.root() {
    this._p = "/";
  }

  /// Get the home directory as a Path.
  Path.home() {
    this._p = Platform.environment['HOME']
      ?? Platform.environment['USERPROFILE'];
  }

  /// Get a Path from a Directory object.
  Path.fromDir(Directory a) {
    this._p = a.path;
  }

  /// Get a Path from a File object.
  Path.fromFile(File a) {
    this._p = a.path;
  }

  /// Get the absolute path as a string.
  String get abs => canonicalize(this._p);

  /// Get a Directory object from a Path.
  Directory get dir => Directory(this.abs);

  /// Get a File object from a Path.
  File get file => File(this.abs);

  /// Join two paths together with the + operator.
  Path operator +(Path p) => Path(join(_p, p._p));

  /// Check if two paths point to the same location.
  bool operator ==(dynamic p) => p is Path && equals(_p, p._p);
  int get hashCode => abs.hashCode;
}
