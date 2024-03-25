
import 'package:flutter/material.dart';
import 'package:loading_assignment_sir_noman/widgets.dart/linearLoading.dart';
import 'package:loading_assignment_sir_noman/widgets.dart/myBaseContainer.dart';
import 'package:loading_assignment_sir_noman/widgets.dart/textPercentage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double width = 0.0;
  int percent = 0;
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<int> _percentAnimation;
  final tween = Tween<double>(begin: 0.0, end: 176.0);
  final intTween = IntTween(begin: 0, end: 100);

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _controller.reset();
            }
          });
    _animation = tween.animate(_controller)
      ..addListener(() {
        setState(() {
          width = _animation.value;
        });
      });
    _percentAnimation = intTween.animate(_controller)
      ..addListener(() {
        percent = _percentAnimation.value;
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Stack(
        children: [
          const MyBaseContainer(),
          Positioned(
              left: 10,
              child: MyLinearLoadingWidget(
                width: width,
              )),
          Positioned(
              left: 60,
              top: 3,
              child: MyPercentageTextWidget(
                percent: percent,
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
      ),
    );
  }
}




