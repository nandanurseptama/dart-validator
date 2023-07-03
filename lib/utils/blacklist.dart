String blacklist(dynamic str, chars) {
  assert(str is String);
  return str.toString().replaceAll(
        RegExp(
          r"[${chars}]+",
          caseSensitive: true,
        ),
        '',
      );
}
