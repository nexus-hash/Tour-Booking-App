import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/BackgroundLogin.png'),
                fit: BoxFit.fill,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 30.0,bottom: 0.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(icon: Icon(Icons.arrow_back,size: 30.0,color: Color(0xFF463EC9),), onPressed: (){Navigator.pop(context);}),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.035,),
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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*.65,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: MediaQuery.of(context).size.height*.01,
                        left: MediaQuery.of(context).size.width*.05,
                        child: Container(
                            width: MediaQuery.of(context).size.width*.84,
                            height: MediaQuery.of(context).size.height*.38,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color(0xFF000000).withAlpha(40),
                                  blurRadius: 20.0
                                )
                              ]
                            ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 60.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: ImageIcon(AssetImage('assets/images/mail.png'),color: Color(0xFF463EC9),),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        fontFamily: 'PoppinsMed',
                                        fontSize: 17.0
                                      )
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        suffixIcon: ImageIcon(AssetImage('assets/images/passwordicon.png'),color: Color(0xFF463EC9),),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                            fontFamily: 'PoppinsMed',
                                            fontSize: 17.0
                                        )
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text('forgot Password?'),
                                )
                              ],
                            ),
                          ),
                          ),


                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*.35,
                        left: MediaQuery.of(context).size.width*.225,
                        child: Container(
                          width: MediaQuery.of(context).size.width*.45,
                          height: MediaQuery.of(context).size.height*.075,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            color: Color(0xFFF38000)
                          ),
                          child: FlatButton(
                            onPressed: (){},
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
                          ),
                        ),
                      )
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
