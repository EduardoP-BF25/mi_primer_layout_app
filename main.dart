import 'package:flutter/material.dart';

import 'package:mi_primer_layout_app/widgets/title_section.dart';
import 'package:mi_primer_layout_app/widgets/buttoms_section.dart';
import 'package:mi_primer_layout_app/widgets/text_section.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sección de widgets'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'img/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const title_section(),
            const buttoms_section(),
            const text_section(),
          ],
        ),
      ),
    );
  }
}
