import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone_flutter/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeView(),
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor),
          tabBarTheme: const TabBarTheme(
              labelColor: CupertinoColors.activeBlue,
              //Seçil Olmayan SayfaRengi
              unselectedLabelColor: CupertinoColors.inactiveGray)),
    );
  }
}
