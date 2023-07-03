import 'package:validator/constants/alpha.dart';

bool isAlpha({
  required dynamic str,
  String locale = 'en-US',
  Map<String, dynamic> options = const {},
}) {
  assert(str is String);
  var ignore = options["ignore"];

  if (ignore != null) {
    if (ignore is RegExp) {
      str = str.toString().replaceAll(ignore, "");
    } else if (ignore is String) {
      str = str.toString().replaceAll(
          RegExp(
            ignore,
          ),
          ''); // escape regex for ignore
    } else {
      throw Exception('ignore should be instance of a String or RegExp');
    }
  }
  var alpha = getAlpha();
  var isInAlpha = alpha[locale] != null;
  if (isInAlpha) {
    var regex = RegExp(alpha[locale]!);
    return regex.hasMatch(str);
  }
  throw Exception("Invalid locale '$locale'");
}
