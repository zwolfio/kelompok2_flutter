import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.all(16));
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: 'Menyajikan Resep Masakan Terbaik',
            body:
                'kami menyajikan dan memberikan resep - resep terbaik dari chef handal yang sudah berpengalaman',
            image: Image.asset('assets/images/food1.jpg', width: 350),
            decoration: pageDecoration),
        PageViewModel(
            title: 'test',
            body: 'coba',
            image: Image.asset('assets/images/food2.png', width: 350),
            decoration: pageDecoration),
        PageViewModel(
            title: 'test',
            body: 'coba',
            image: Image.asset('assets/images/food3.jpg', width: 350),
            decoration: pageDecoration,
            footer: ElevatedButton(
              onPressed: () {},
              child: Text('Mulai Cari Resep'),
            ))
      ],
      onDone: () {},
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: Icon(Icons.arrow_back),
      skip: Text('Skip', style: TextStyle(fontWeight: FontWeight.bold)),
      done: Text('Done', style: TextStyle(fontWeight: FontWeight.bold)),
      next: Icon(Icons.arrow_forward),
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
