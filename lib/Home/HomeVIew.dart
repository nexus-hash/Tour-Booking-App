import 'package:flutter/material.dart';
import 'package:travel_ui/Drawer.dart';

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
                padding: const EdgeInsets.only(top: 40.0,left: 10.0,right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: ImageIcon(AssetImage("assets/images/menu.png"),size: 30.0,color: Color(0xFF463EC9),), onPressed:(){} ),
                    Text("Home",style: TextStyle(color: Color(0xFF312DA4),
                      fontFamily: 'PoppinsMed',
                      fontSize: 29.0
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('Popular Countries',
                          style: TextStyle(
                            fontFamily: 'PoppinsMed',
                            color: Colors.black,
                            fontSize: 19.0
                          ),
                          ),
                        ),
                        IconButton(icon: Icon(Icons.arrow_forward_ios,size: 20.0,color: Colors.black,), onPressed: null)
                      ],
                    ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.12,
                child: Padding(
                  padding:EdgeInsets.only(left: 10.0),
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index){return SizedBox(width: 10.0,);},
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.tealAccent
                        ),
                      );
                    },
                  ),
                ) ,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.008,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*.057,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Popular Destination',
                        style: TextStyle(
                          fontFamily: 'PoppinsMed',
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                          onPressed: (){},
                          child: Text('View All',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'PoppinsMed',fontSize: 17.0
                          ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child:  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.black12
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/images/park.png',
                          fit: BoxFit.fitHeight,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height*.075,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  color: Colors.grey.withOpacity(.4),
                                  blurRadius: 3.0,
                                  
                                )
                              ],
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0),
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Banff National Park",
                                    style: TextStyle(
                                      fontFamily: "PoppinsMed",
                                      fontSize: 16.0
                                    ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Canada",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 12.0
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ),

            ],
          ),
      ),
    );
  }
}

