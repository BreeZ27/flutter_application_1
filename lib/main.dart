// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> imgList = [
  'https://picsum.photos/500/400',
  'https://picsum.photos/400/300',
  'https://picsum.photos/500/300',
  'https://picsum.photos/400/300',
  'https://picsum.photos/300/300',
];


class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: imgList
            .map((item) => Container(
                  child: Center(child: Image.network(item, fit: BoxFit.cover)),
                  color: Colors.black,
                ))
            .toList(),
      )),
    );
  }
}


void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter app'),
      home: BasicDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // SvgPicture.asset('assets/images/finger.svg')
            SvgPicture.network('https://svgx.ru/svg/1266125.svg', width: 150, height: 150)
            // Image.asset('assets/images/IMG_0070.png')
            // Image.network('https://picsum.photos/500/300')

          ],
          )
        )
      );
  }
}
