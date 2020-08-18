import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:BottomAppBar(
        color: Color(0xFFF2F2F2),

        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //We shall add two IconButtons here
              IconButton(icon: ImageIcon(AssetImage('assets/images/homeicon.png'),color: Colors.black), onPressed: null),
              SizedBox(width: MediaQuery.of(context).size.width*.1,),
              IconButton(icon: ImageIcon(AssetImage('assets/images/Category.png'),color: Colors.black,), onPressed: null),
              SizedBox(width: MediaQuery.of(context).size.width*.25,),
              IconButton(icon: ImageIcon(AssetImage('assets/images/bookmarkicon.png'),color: Colors.black), onPressed: null),
              SizedBox(width: MediaQuery.of(context).size.width*.1,),
              IconButton(icon: ImageIcon(AssetImage('assets/images/user2.png'),color: Colors.black), onPressed: null),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color(0xFFF38000),
        child: Image.asset('assets/images/addicon.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
