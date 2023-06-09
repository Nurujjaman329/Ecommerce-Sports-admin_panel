import 'dart:io';

import 'package:ecommerceweb/views/screens/main_screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
              apiKey: "AIzaSyA5oMq0qGotaNuvMhpl5ZTqPFQr1WGRwYw",
              appId: "1:573827726190:web:d49e0c2e0eb730dcfa5f7f",
              messagingSenderId: "573827726190",
              projectId: "ecommerceproject-ce77e",
              storageBucket: "ecommerceproject-ce77e.appspot.com",
            )
          : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
