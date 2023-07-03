// String escape(dynamic str) {
//   assert(str is String);
//   return (str.toString().replaceAll(RegExp(r"/&"), '&amp;')
//     .replaceAll(RegExp(r'"'), '&quot;')
//     .replaceAll(RegExp(r"'"), '&#x27;')
//     .replaceAll(RegExp(r"/<"), '&lt;')
//     .replaceAll(RegExp(r"/>"), '&gt;')
//     .replaceAll(/\//g, '&#x2F;')
//     .replaceAll(/\\/g, '&#x5C;')
//     .replaceAll(/`/g, '&#96;'));
// }