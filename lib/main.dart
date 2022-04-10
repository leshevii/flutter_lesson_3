// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> images = [
  SvgPicture.asset('assets/flag.svg'),
  SvgPicture.asset('assets/flower.svg'),
  SvgPicture.network(
    'https://svgshare.com/i/g66.svg',
    color: Colors.orange,
  )
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter lesson 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SvgPicture.asset(
              'assets/flag.svg',
              height: 200,
            ),
            CarouselSlider(
              items: images,
              options: CarouselOptions(height: 400),
            ),
          ],
        ),
      ),
    );
  }
}
