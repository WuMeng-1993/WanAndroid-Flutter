import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wan_android_flutter/common/GlobalConfig.dart';
import 'package:wan_android_flutter/pages/ApplicationPage.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "玩安卓",
      theme: ThemeData(
        fontFamily:"noto",
        primaryColor: GlobalConfig.colorPrimary
      ),
      home: ApplicationPage(),
    );
  }

}