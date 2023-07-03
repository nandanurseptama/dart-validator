const alpha = {
  'en-US': r"^[A-Z]+$",
  'az-AZ': r"^[A-VXYZÇƏĞİıÖŞÜ]+$",
  'bg-BG': r"^[А-Я]+$",
  'cs-CZ': r"^[A-ZÁČĎÉĚÍŇÓŘŠŤÚŮÝŽ]+$",
  'da-DK': r"^[A-ZÆØÅ]+$",
  'de-DE': r"^[A-ZÄÖÜß]+$",
  'el-GR': r"^[Α-ώ]+$",
  'es-ES': r"^[A-ZÁÉÍÑÓÚÜ]+$",
  'fa-IR': r"^[ابپتثجچحخدذرزژسشصضطظعغفقکگلمنوهی]+$",
  'fi-FI': r"^[A-ZÅÄÖ]+$",
  'fr-FR': r"^[A-ZÀÂÆÇÉÈÊËÏÎÔŒÙÛÜŸ]+$",
  'it-IT': r"^[A-ZÀÉÈÌÎÓÒÙ]+$",
  'ja-JP': r"^[ぁ-んァ-ヶｦ-ﾟ一-龠ー・。、]+$",
  'nb-NO': r"^[A-ZÆØÅ]+$",
  'nl-NL': r"^[A-ZÁÉËÏÓÖÜÚ]+$",
  'nn-NO': r"^[A-ZÆØÅ]+$",
  'hu-HU': r"^[A-ZÁÉÍÓÖŐÚÜŰ]+$",
  'pl-PL': r"^[A-ZĄĆĘŚŁŃÓŻŹ]+$",
  'pt-PT': r"^[A-ZÃÁÀÂÄÇÉÊËÍÏÕÓÔÖÚÜ]+$",
  'ru-RU': r"^[А-ЯЁ]+$",
  'kk-KZ': r"^[А-ЯЁ\u04D8\u04B0\u0406\u04A2\u0492\u04AE\u049A\u04E8\u04BA]+$",
  'sl-SI': r"^[A-ZČĆĐŠŽ]+$",
  'sk-SK': r"^[A-ZÁČĎÉÍŇÓŠŤÚÝŽĹŔĽÄÔ]+$",
  'sr-RS@latin': r"^[A-ZČĆŽŠĐ]+$",
  'sr-RS': r"^[А-ЯЂЈЉЊЋЏ]+$",
  'sv-SE': r"^[A-ZÅÄÖ]+$",
  'th-TH': r"^[ก-๐\s]+$",
  'tr-TR': r"^[A-ZÇĞİıÖŞÜ]+$",
  'uk-UA': r"^[А-ЩЬЮЯЄIЇҐі]+$",
  'vi-VN':
      r"^[A-ZÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸ]+$",
  'ko-KR': r"^[ㄱ-ㅎㅏ-ㅣ가-힣]*$",
  'ku-IQ': r"^[ئابپتجچحخدرڕزژسشعغفڤقکگلڵمنوۆھەیێيطؤثآإأكضصةظذ]+$",
  "ar": r"^[ءآأؤإئابةتثجحخدذرزسشصضطظعغفقكلمنهوىيًٌٍَُِّْٰ]+$",
  "he": r"^[א-ת]+$",
  "fa": r"^['آاءأؤئبپتثجچحخدذرزژسشصضطظعغفقکگلمنوهةی']+$",
  "bn":
      r"^['ঀঁংঃঅআইঈউঊঋঌএঐওঔকখগঘঙচছজঝঞটঠডঢণতথদধনপফবভমযরলশষসহ়ঽািীুূৃৄেৈোৌ্ৎৗড়ঢ়য়ৠৡৢৣৰৱ৲৳৴৵৶৷৸৹৺৻']+$",
  'hi-IN': r"^[\u0900-\u0961]+[\u0972-\u097F]*$",
  'si-LK': r"^[\u0D80-\u0DFF]+$",
};

const alphanumeric = {
  'en-US': r"^[0-9A-Z]+$",
  'az-AZ': r"^[0-9A-VXYZÇƏĞİıÖŞÜ]+$",
  'bg-BG': r"^[0-9А-Я]+$",
  'cs-CZ': r"^[0-9A-ZÁČĎÉĚÍŇÓŘŠŤÚŮÝŽ]+$",
  'da-DK': r"^[0-9A-ZÆØÅ]+$",
  'de-DE': r"^[0-9A-ZÄÖÜß]+$",
  'el-GR': r"^[0-9Α-ω]+$",
  'es-ES': r"^[0-9A-ZÁÉÍÑÓÚÜ]+$",
  'fi-FI': r"^[0-9A-ZÅÄÖ]+$",
  'fr-FR': r"^[0-9A-ZÀÂÆÇÉÈÊËÏÎÔŒÙÛÜŸ]+$",
  'it-IT': r"^[0-9A-ZÀÉÈÌÎÓÒÙ]+$",
  'ja-JP': r"^[0-9０-９ぁ-んァ-ヶｦ-ﾟ一-龠ー・。、]+$",
  'hu-HU': r"^[0-9A-ZÁÉÍÓÖŐÚÜŰ]+$",
  'nb-NO': r"^[0-9A-ZÆØÅ]+$",
  'nl-NL': r"^[0-9A-ZÁÉËÏÓÖÜÚ]+$",
  'nn-NO': r"^[0-9A-ZÆØÅ]+$",
  'pl-PL': r"^[0-9A-ZĄĆĘŚŁŃÓŻŹ]+$",
  'pt-PT': r"^[0-9A-ZÃÁÀÂÄÇÉÊËÍÏÕÓÔÖÚÜ]+$",
  'ru-RU': r"^[0-9А-ЯЁ]+$",
  'kk-KZ':
      r"^[0-9А-ЯЁ\u04D8\u04B0\u0406\u04A2\u0492\u04AE\u049A\u04E8\u04BA]+$",
  'sl-SI': r"^[0-9A-ZČĆĐŠŽ]+$",
  'sk-SK': r"^[0-9A-ZÁČĎÉÍŇÓŠŤÚÝŽĹŔĽÄÔ]+$",
  'sr-RS@latin': r"^[0-9A-ZČĆŽŠĐ]+$",
  'sr-RS': r"^[0-9А-ЯЂЈЉЊЋЏ]+$",
  'sv-SE': r"^[0-9A-ZÅÄÖ]+$",
  'th-TH': r"^[ก-๙\s]+$",
  'tr-TR': r"^[0-9A-ZÇĞİıÖŞÜ]+$",
  'uk-UA': r"^[0-9А-ЩЬЮЯЄIЇҐі]+$",
  'ko-KR': r"^[0-9ㄱ-ㅎㅏ-ㅣ가-힣]*$",
  'ku-IQ': r"^[٠١٢٣٤٥٦٧٨٩0-9ئابپتجچحخدرڕزژسشعغفڤقکگلڵمنوۆھەیێيطؤثآإأكضصةظذ]+$",
  'vi-VN':
      r"^[0-9A-ZÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸ]+$",
  "ar": r"^[٠١٢٣٤٥٦٧٨٩0-9ءآأؤإئابةتثجحخدذرزسشصضطظعغفقكلمنهوىيًٌٍَُِّْٰ]+$",
  "he": r"^[0-9א-ת]+$",
  "fa": r"^['0-9آاءأؤئبپتثجچحخدذرزژسشصضطظعغفقکگلمنوهةی۱۲۳۴۵۶۷۸۹۰']+$",
  "bn":
      r"^['ঀঁংঃঅআইঈউঊঋঌএঐওঔকখগঘঙচছজঝঞটঠডঢণতথদধনপফবভমযরলশষসহ়ঽািীুূৃৄেৈোৌ্ৎৗড়ঢ়য়ৠৡৢৣ০১২৩৪৫৬৭৮৯ৰৱ৲৳৴৵৶৷৸৹৺৻']+$",
  'hi-IN': r"^[\u0900-\u0963]+[\u0966-\u097F]*$",
  'si-LK': r"^[0-9\u0D80-\u0DFF]+$",
};

const decimal = {
  'en-US': '.',
  "ar": '٫',
};
const arabicLocales = [
  'AE',
  'BH',
  'DZ',
  'EG',
  'IQ',
  'JO',
  'KW',
  'LB',
  'LY',
  'MA',
  'QM',
  'QA',
  'SA',
  'SD',
  'SY',
  'TN',
  'YE'
];
const farsiLocales = ['IR', 'AF'];
const englishLocales = ['AU', 'GB', 'HK', 'IN', 'NZ', 'ZA', 'ZM'];
const bengaliLocales = ['BD', 'IN'];

// Source: https://en.wikipedia.org/wiki/Decimal_mark
const dotDecimal = ['ar-EG', 'ar-LB', 'ar-LY'];
const commaDecimal = [
  'bg-BG',
  'cs-CZ',
  'da-DK',
  'de-DE',
  'el-GR',
  'en-ZM',
  'es-ES',
  'fr-CA',
  'fr-FR',
  'id-ID',
  'it-IT',
  'ku-IQ',
  'hi-IN',
  'hu-HU',
  'nb-NO',
  'nn-NO',
  'nl-NL',
  'pl-PL',
  'pt-PT',
  'ru-RU',
  'kk-KZ',
  'si-LK',
  'sl-SI',
  'sr-RS@latin',
  'sr-RS',
  'sv-SE',
  'tr-TR',
  'uk-UA',
  'vi-VN',
];
Map<String, String> getAlpha() {
  var a = {...alpha};
  for (var i = 0; i < englishLocales.length; i++) {
    var locale = "en-${englishLocales[i]}";
    a[locale] = a['en-US']!;
  }
  // Source: http://www.localeplanet.com/java/

  for (var i = 0; i < arabicLocales.length; i++) {
    var locale = "ar-${arabicLocales[i]}";
    a[locale] = a["ar"]!;
  }

  for (var i = 0; i < bengaliLocales.length; i++) {
    var locale = "bn-${bengaliLocales[i]}";
    a[locale] = a["bn"]!;
  }
  a["fr-CA"] = a['fr-FR']!;
  a['pt-BR'] = a['pt-PT']!;
  a['pl-Pl'] = a['pl-PL']!;
  // see #1455
  a['fa-AF'] = a["fa"]!;
  return a;
}

Map<String, String> getAlphaNumeric() {
  var a = {...alphanumeric};
  for (var i = 0; i < englishLocales.length; i++) {
    var locale = "en-${englishLocales[i]}";
    a[locale] = a['en-US']!;
  }

  // Source: http://www.localeplanet.com/java/

  for (var i = 0; i < arabicLocales.length; i++) {
    var locale = "ar-${arabicLocales[i]}";
    a[locale] = a["ar"]!;
  }

  for (var i = 0; i < farsiLocales.length; i++) {
    var locale = "fa-${farsiLocales[i]}";
    a[locale] = a["fa"]!;
  }
  for (var i = 0; i < bengaliLocales.length; i++) {
    var locale = "bn-${bengaliLocales[i]}";
    a[locale] = a["a"]!;
    // decimal[locale] = decimal['en-US'];
  }

  a['fr-CA'] = a['fr-FR']!;
  a['pt-BR'] = a['pt-PT']!;
  a['pl-Pl'] = a['pl-PL']!;
  return a;
}

Map<String, String> getDecimal() {
  var d = {...decimal};
  for (var i = 0; i < englishLocales.length; i++) {
    var locale = "en-${englishLocales[i]}";
    d[locale] = d['en-US']!;
  }
  for (var i = 0; i < arabicLocales.length; i++) {
    var locale = "ar-${arabicLocales[i]}";
    d[locale] = d["ar"]!;
  }
  for (var i = 0; i < farsiLocales.length; i++) {
    var locale = "fa-${farsiLocales[i]}";
    d[locale] = d["fa"]!;
  }
  for (var i = 0; i < bengaliLocales.length; i++) {
    var locale = "bn-${bengaliLocales[i]}";
    d[locale] = d["a"]!;
  }

  for (var i = 0; i < dotDecimal.length; i++) {
    d[dotDecimal[i]] = d['en-US']!;
  }

  for (var i = 0; i < commaDecimal.length; i++) {
    d[commaDecimal[i]] = ',';
  }
  d['pt-BR'] = d['pt-PT']!;

  // see #862
  d['pl-Pl'] = d['pl-PL']!;
  return d;
}
