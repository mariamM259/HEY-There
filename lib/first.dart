import 'package:flutter/material.dart';
import 'dart:math' as math;
class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  Color _col = Colors.white;
  @override
  void change(){
    setState(() {
      _col=Color((math.Random().nextDouble()*0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: _col,
        body: GestureDetector(
          onTap: change,
          child: Stack(
            children: [
              Container(
           height: double.infinity,
                width: double.infinity,
                color: _col,
              ),
              Center(

                  child: Text('Hey there'))
            ],
          )
        ),

      ),
    );
  }
}
