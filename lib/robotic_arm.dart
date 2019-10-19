import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
class Robotic extends StatefulWidget {
  @override
  _RoboticState createState() => _RoboticState();
}


class _RoboticState extends State<Robotic> {
  @override
  Widget build(BuildContext context) {
  //  var chart=[charts.Series()];
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
            image: DecorationImage(
              image:AssetImage('assets/background.jpeg') ,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop)
            ),
          )  ,
          constraints:BoxConstraints.expand() ,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               Text('Right Arm Statistics',style: TextStyle(color: Colors.white,fontSize: 20.0),),
               Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(50.0),
                                     
                  ) ,
                  Text("Details",style: TextStyle(color: Colors.white,fontSize: 20.0,
                  fontWeight: FontWeight.bold),),

                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(50.0),
                                     // child: ,
                  ) , 

              ],
            ),
          ),
          
          )
      
    );
  }
}