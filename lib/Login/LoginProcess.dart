import 'package:flutter/material.dart';
import 'package:travel_ui/CreateAccount.dart';
import 'package:travel_ui/LoginPage.dart';

class LoginProcess1 extends StatefulWidget {
  @override
  _LoginProcess1State createState() => _LoginProcess1State();
}

class _LoginProcess1State extends State<LoginProcess1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/images/Background.png'),
                fit: BoxFit.fill,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

                 Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width*.80,
                    height: MediaQuery.of(context).size.height*.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Color(0xFFF38000),
                    ),
                    child: FlatButton(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Login',style:
                        TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'PoppinsMed',
                            fontSize: 22.0
                        )
                          ,),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return LoginPage();}));
                      },
                    ),
                  ),
                ),
              SizedBox(height: MediaQuery.of(context).size.height*.02,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width*.80,
                  height: MediaQuery.of(context).size.height*.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Color(0xFFF38000),
                  ),
                  child: FlatButton(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Create Account',style:
                      TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'PoppinsMed',
                          fontSize: 22.0
                      )
                        ,),
                    ),
                    onPressed: (){Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){return CreateAccount();}
                    ));},
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
