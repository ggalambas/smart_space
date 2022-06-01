import 'package:flutter/material.dart';
import 'package:smart_space/smart_space.dart';

void main() {
  // define the spacing base
  kSpace = 24; // default: 8.0
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartSpace Example',
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  Widget get square => Container(
        height: kSpace,
        width: kSpace,
        color: Colors.black,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(kSpace * 2),
          padding: EdgeInsets.all(kSpace),
          color: Colors.white,
          child: Column(
            children: [
              Row(children: [square, Space(), square]),
              Space(2),
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                  separatorBuilder: (_, __) => Space(),
                  itemBuilder: (_, __) => square,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
