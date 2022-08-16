import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Flag(),
      ),
    );
  }
}

class Flag extends StatelessWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 200,
          color: Colors.red,
        ),
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 60,
          left: 72.5,
          child: Container(
            width: 80,
            height: 80,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 65,
            right: 71,
            child: Container(
          width: 50,
          height: 50,
              child: Transform(transform: Matrix4.rotationZ(1)
                 ,child: Icon(Icons.star, color: Colors.white,),),


        ),),
      ],
    );
  }
}
