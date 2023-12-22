import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:too_heal/HomePage.dart';
import 'package:too_heal/Routes/Routes.dart';
import 'package:too_heal/phoneauth.dart';
import 'firebase_options.dart';

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: RoutesClasss.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClasss.Phoneauth,
    );
  }
}
