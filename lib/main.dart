import 'package:corona_data/screens/home_page.dart';
import 'package:corona_data/screens/view_page.dart';
import 'package:corona_data/screens/view_page1.dart';
import 'package:corona_data/screens/view_page2.dart';
import 'package:flutter/material.dart';

import 'api_helper/helper.dart';
import 'models.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'view_page': (context) => const ViewPage(),
        'view_page1': (context) => const ViewPage1(),
        'view_page2': (context) => const ViewPage2(),
      },
    ),
  );
}
