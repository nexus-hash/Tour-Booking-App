import 'package:flutter/material.dart';
import 'package:travel_ui/Home/BookmarksView.dart';
import 'package:travel_ui/Home/CategoryView.dart';
import 'package:travel_ui/Home/HomeVIew.dart';
import 'package:travel_ui/Home/UserView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController _myPage = PageController(initialPage: 0);
  Color _changedColor =Color(0xFF463EC9);
  Color _changedColor2 =Colors.black;
  Color _changedColor3 =Colors.black;
  Color _changedColor4 =Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFF2F2F2),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //We shall add two IconButtons here
              IconButton(
                  icon: ImageIcon(AssetImage('assets/images/homeicon.png'),
                    color: _changedColor,
                    size: 30.0,
                  ),
                  onPressed: (){
                    setState(() {
                      _myPage.jumpToPage(0);
                      _changedColor = Color(0xFF463EC9);
                      _changedColor4 = Colors.black;
                      _changedColor2 = Colors.black;
                      _changedColor3 = Colors.black;
                    });
                  }
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
              ),
              IconButton(
                  icon: ImageIcon(
                    AssetImage('assets/images/Category.png'),
                    color: _changedColor2,
                  ),
                  onPressed: () {setState(() {
                    _changedColor2 = Color(0xFF463EC9);
                    _changedColor4 = Colors.black;
                    _changedColor = Colors.black;
                    _changedColor3 = Colors.black;
                    _myPage.jumpToPage(1);

                  });}),
              SizedBox(
                width: MediaQuery.of(context).size.width * .25,
              ),
              IconButton(
                  icon: ImageIcon(AssetImage('assets/images/bookmark.png'),
                      color: _changedColor3),
                  onPressed: () {setState(() {
                    _myPage.jumpToPage(2);
                    _changedColor3 = Color(0xFF463EC9);
                    _changedColor4 = Colors.black;
                    _changedColor2 = Colors.black;
                    _changedColor = Colors.black;
                  });}),
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
              ),
              IconButton(
                  icon: ImageIcon(AssetImage('assets/images/user2.png'),
                      color: _changedColor4),
                  onPressed: () {setState(() {
                    _myPage.jumpToPage(3);
                    _changedColor = Colors.black;
                    _changedColor2 = Colors.black;
                    _changedColor3 = Colors.black;
                    _changedColor4 = Color(0xFF463EC9);
                  });}),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
      body: SafeArea(
        child: PageView(
          controller: _myPage,
          children: <Widget>[

               Center(
                child: HomePageView(),
              ),

            Center(
              child: Container(
                child: Category(),
              ),
            ),
            Center(
              child: Container(
                child:Bookmark(),
              ),
            ),
            Center(
              child: Container(
                child: User(),
              ),
            )
          ],
          physics: NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF38000),
        child: Image.asset('assets/images/addicon.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


