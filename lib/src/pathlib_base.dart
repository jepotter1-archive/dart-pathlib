
import 'package:path/path.dart';

class Path {
  String _p;
  Path(this._p);
  /// Get the current working directory as a Path
  Path.cwd() {
    this._p = current;
  }
  /// Get the root 
  Path.root() {
    this._p = "/";
  }
  /// Join two paths together with the + operator
  Path operator +(Path p) => Path(join(_p, p._p));
  /// Check if two paths point to the same location
  bool operator ==(dynamic p) => equals(_p, p._p);
  /// Get the absolute path as a string
  String get abs => canonicalize(this._p);
}
