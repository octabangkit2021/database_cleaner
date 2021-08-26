import 'package:database_cleaner/ui/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext , Orientation , ScreenType ) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        );
      },
    );
  }
}