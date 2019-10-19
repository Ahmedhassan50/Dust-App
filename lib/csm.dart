import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';


class Csm extends StatefulWidget {
  @override
  _CsmState createState() => _CsmState();
}

class _CsmState extends State<Csm> {
  @override
  Widget build(BuildContext context) {
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
                 Text('CSM Interior system detection',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[ CircleAvatar(backgroundColor: Colors.white,maxRadius: 100.0,backgroundImage: AssetImage('assets/mach1.jpeg'),)]),
                  Text("Details",style: TextStyle(color: Colors.white,fontSize: 20.0,
                  fontWeight: FontWeight.bold),),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(50.0),
                                      child: Sparkline(data: [1.0,5.5,1.0,7.0],lineColor: Colors.greenAccent,
                    pointsMode: PointsMode.all,
                    pointSize: 8.0,),
                  ) , 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children:<Widget>[ RaisedButton(child:Text("mitigation") ,onPressed: (){},)]),
                 
                 ],),
          ),

      ),
    );
  }
}