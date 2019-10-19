import 'package:flutter/material.dart';

class Suit extends StatefulWidget {
  @override
  _SuitState createState() => _SuitState();
}

class _SuitState extends State<Suit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/astrunut.jpeg') ,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop)
          ),
        )  ,
        constraints:BoxConstraints.expand() ,
        child: Stack(
          children: <Widget>[
           // Image.asset('assets/astrunut.png'),
          ],
        ),  

    );
  }
}