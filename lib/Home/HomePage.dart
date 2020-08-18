import 'package:flutter/material.dart';
import 'package:travel_ui/Home/BookmarksView.dart';
import 'package:travel_ui/Home/CategoryView.dart';
import 'package:travel_ui/Home/UserView.dart';

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
              IconButton(
                  icon: Icon((Icons.home),color: Color(0xFF463EC9),size: 30.0,),
                  onPressed: null
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.1,),
              IconButton(
                  icon: ImageIcon(AssetImage('assets/images/Category.png'),color: Colors.black,),
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return Category();}));}
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.25,),
              IconButton(
                  icon: ImageIcon(AssetImage('assets/images/bookmarkicon.png'),color: Colors.black),
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return Bookmark();}));}
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.1,),
              IconButton(
                  icon: ImageIcon(AssetImage('assets/images/user2.png'),color: Colors.black),
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){return User();}));
                  }
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.35,
              color: Colors.red,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color(0xFFF38000),
        child: Image.asset('assets/images/addicon.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
