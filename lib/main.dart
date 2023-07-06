import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'modules/app/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('ar',), Locale('en', 'US')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ar', ),
        child: MyApp()
    ),
  );
}



