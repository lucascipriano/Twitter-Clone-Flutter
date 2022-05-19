import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:randomproject/src/my_app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.blue,
    ),
  );
  runApp(const MyApp());
}
