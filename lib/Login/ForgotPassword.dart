import 'package:flutter/material.dart';
import 'VerificationCode.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                SizedBox(height: MediaQuery.of(context).size.height*.1,),
                Align(
                  alignment: Alignment.center,
                  child: Text("Forgot Password",
                    style: TextStyle(
                      color: Color(0xFFF38000),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontFamily: 'PoppinsMed',
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),
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
                          height: MediaQuery.of(context).size.height*.2,
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
                            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0),
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
                                SizedBox(height: MediaQuery.of(context).size.height*.01,),


                              ],
                            ),
                          ),
                        ),


                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*.175,
                        left: MediaQuery.of(context).size.width*.225,
                        child: Container(
                          width: MediaQuery.of(context).size.width*.45,
                          height: MediaQuery.of(context).size.height*.075,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              color: Color(0xFFF38000)
                          ),
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context){return Verification();}
                              ));
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Send',style:
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
