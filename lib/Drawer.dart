import 'package:flutter/material.dart';

class dawer extends StatefulWidget {
  @override
  _dawerState createState() => _dawerState();
}

class _dawerState extends State<dawer> {

  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.black87
                ),
                child: Column(
                  children: <Widget>[

                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: (){},
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(

                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                offset: Offset(0.0,0.0),
                                blurRadius: 1.0,
                                color: Colors.redAccent,
                                spreadRadius: 1.0
                            )
                          ],
                          color: Colors.red
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Good Bye, See you Later.",style: TextStyle(color: Colors.white,fontSize: 17.0),),)
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
