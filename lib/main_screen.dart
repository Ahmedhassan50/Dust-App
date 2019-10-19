import 'package:dustapp/csm.dart';
import 'package:dustapp/robotic_arm.dart';
import 'package:dustapp/suit.dart';
import 'package:flutter/material.dart';
import 'suit.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dust App"),backgroundColor: Colors.blueGrey[900],
      ),
      drawer: Drawer(),
      body:Container(
        decoration:BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/background.jpeg') ,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop)
          ),
        )  ,
        constraints:BoxConstraints.expand() ,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 70.0),
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GestureDetector(
                onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context){return Suit();}));} ,
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    child:Text("Check Suit",style: TextStyle(color: Colors.white,fontSize: 20.0),) ,
                       margin: EdgeInsets.all(10.0),
                         decoration: BoxDecoration(
                           image: DecorationImage(
            image:AssetImage('assets/suit.jpeg') ,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop)
          ),
               borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
     GestureDetector(
                onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context){return Csm();}));} ,
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    child:Text("Check CSM",style: TextStyle(color: Colors.white,fontSize: 18.0),) ,
                       margin: EdgeInsets.all(10.0),
                         decoration: BoxDecoration(
                           image: DecorationImage(
            image:AssetImage('assets/csm.jpeg') ,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop)
          ),
               borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
     GestureDetector(
                onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context){return Robotic();}));} ,
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    child:Align(alignment: Alignment.topLeft,child: Text("Check Robotic Arm",style: TextStyle(color: Colors.white,fontSize: 18.0))) ,
                       margin: EdgeInsets.all(10.0),
                         decoration: BoxDecoration(
                           image: DecorationImage(
            image:AssetImage('assets/Arm.jpeg') ,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop)
          ),
               borderRadius: BorderRadius.circular(10.0)),
      ),
    )
            ],
          ),
        ),
      ),
    );
      
    
  }
}