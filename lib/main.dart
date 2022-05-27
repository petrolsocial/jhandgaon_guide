import 'package:flutter/material.dart';
import 'package:jhandgaon_guide/guide/home_page.dart';
import 'package:jhandgaon_guide/themes/custom_theme.dart';

void main() {
  runApp(const JhandgaonGuide());
}

class JhandgaonGuide extends StatelessWidget {
  const JhandgaonGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.theme1,
      home: const HomePage(),
    );
  }
}
