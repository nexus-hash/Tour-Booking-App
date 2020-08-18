import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: ImageIcon(AssetImage("assets/images/menu.png"),size: 30.0,color: Color(0xFF463EC9),), onPressed:(){} ),
                  Text("Home",style: TextStyle(color: Color(0xFF312DA4),
                    fontFamily: 'PoppinsMed',
                    fontSize: 30.0
                  ),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xFFEDEDED)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,size: 30.0,color: Colors.black,),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontFamily: 'PoppinsMed'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*.06,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFF707070).withOpacity(.26)
                  ),
                  bottom:  BorderSide(
                      color: Color(0xFF707070).withOpacity(.26)
                  ),
                ),
              ),
              child: FlatButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Popular Countries',
                      style: TextStyle(
                        fontFamily: 'PoppinsMed',
                        color: Colors.black,
                        fontSize: 20.0
                      ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*.305,),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.black,), onPressed: null)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
