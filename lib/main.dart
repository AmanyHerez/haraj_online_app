import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/app.dart';

import 'app/auth_cubit/data/sp_helper.dart';
import 'app/stander_cubit/stander_cubit.dart';
import 'data/remote/dio_helper.dart';
import 'firebase_options.dart';
import 'modules/chat/get/bindings/app/profile_screen_binding.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SpHelper.spHelper.initSp();
  DioHelper.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('ar',), Locale('en', 'US')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ar', ),
        child: MyApp()
    ),
  );
}



