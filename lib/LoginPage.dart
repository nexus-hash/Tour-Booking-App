import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/Background.png'),
                fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 110.0,bottom: 60.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("Login",
                  style: TextStyle(
                    color: Color(0xFFF38000),
                    fontSize: 50.0,
                    fontFamily: 'PoppinsMed',
                  ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.029,),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*.6,
                  child: Stack(
                    children: <Widget>[

                    ],
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}
