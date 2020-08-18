import 'package:flutter/material.dart';

class TextWritting extends StatelessWidget{
  String image,htext;
  bool x;
  TextWritting(String image,String htext,bool x){
    this.image = image;
    this.htext=htext;
    this.x=x;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: ImageIcon(AssetImage(image),color: Color(0xFF463EC9),),
            hintText: htext,
            hintStyle: TextStyle(
                fontFamily: 'PoppinsMed',
                fontSize: 17.0
            )
        ),
        obscureText: x,
      ),
    );
  }
}