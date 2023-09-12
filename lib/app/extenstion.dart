import 'package:haraj_app/app/constants.dart';

extension NonNullString on String? {
  //use to check null string value
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

//use to check null int value
extension NonNullInt on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}
