import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CountryList.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  List<CountryList> listCountry = [
    CountryList("Canada", 'assets/images/images.png'),
    CountryList('USA', 'assets/images/usa.png'),
    CountryList('Australia', 'assets/images/usa.png'),
    CountryList('USA', 'assets/images/usa.png'),
    CountryList('USA', 'assets/images/usa.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 10.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: ImageIcon(
                        AssetImage("assets/images/list.png"),
                        size: 30.0,
                        color: Color(0xFF463EC9),
                      ),
                      onPressed: () {}),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Color(0xFF312DA4),
                        fontFamily: 'PoppinsMed',
                        fontSize: 29.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xFFEDEDED)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontFamily: 'PoppinsMed'),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * .06,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                color: Color(0xFF707070).withOpacity(.26)),
                            bottom: BorderSide(
                                color: Color(0xFF707070).withOpacity(.26)),
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  'Popular Countries',
                                  style: TextStyle(
                                      fontFamily: 'PoppinsMed',
                                      color: Colors.black,
                                      fontSize: 19.0),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                  onPressed: null)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .12,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ListView.separated(
                            itemCount: listCountry.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 10.0,
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: MediaQuery.of(context).size.width * .4,
                                height:
                                    MediaQuery.of(context).size.height * .02,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Stack(
                                  children: <Widget>[

                                    Image.asset(
                                          listCountry[index].imageAddress,
                                      fit: BoxFit.cover,),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        listCountry[index].countryName,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .008,
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * .057,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                'Popular Destination',
                                style: TextStyle(
                                    fontFamily: 'PoppinsMed', fontSize: 20.0),
                              ),
                            ),

                            Container(
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'PoppinsMed',
                                        fontSize: 17.0),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .012,
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * .20,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.black12),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'assets/images/park.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Material(
                                        child: InkWell(
                                          onTap: (){},
                                          child: Container(
                                              width:
                                              MediaQuery.of(context).size.width * .1,
                                              height: MediaQuery.of(context).size.height * .05,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(15.0)),
                                                  color: Color(0xFFF38000)
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: Image.asset('assets/images/bookmark.png',
                                                  color: Colors.white,
                                                  fit: BoxFit.fitHeight,
                                                ),)
                                          ),)
                                    )
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height * .075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey.withOpacity(.4),
                                            blurRadius: 3.0,
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15.0),
                                            bottomRight:
                                                Radius.circular(15.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, top: 4.0),
                                      child: Column(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Banff National Park",
                                              style: TextStyle(
                                                  fontFamily: "PoppinsMed",
                                                  fontSize: 16.0),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Canada",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12.0),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * .20,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.black12),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'assets/images/BALI.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Material(
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .1,
                                    height: MediaQuery.of(context).size.height * .05,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15.0)),
                                        color: Color(0xFFF38000)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Image.asset('assets/images/bookmark.png',
                                    color: Colors.white,
                                      fit: BoxFit.fitHeight,
                                    ),)
                                  ),)
                                )
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        .075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey.withOpacity(.4),
                                            blurRadius: 3.0,
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15.0),
                                            bottomRight:
                                                Radius.circular(15.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, top: 4.0),
                                      child: Column(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Bali",
                                              style: TextStyle(
                                                  fontFamily: "PoppinsMed",
                                                  fontSize: 16.0),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Indonesia",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12.0),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .014,
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * .06,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('Explore',
                            style: TextStyle(
                            fontFamily: 'PoppinsMed',
                              fontSize: 21.0
                          ),
                        ),
                        )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0,),
                      Container(
                            height: MediaQuery.of(context).size.height*.27,


                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                           itemCount: 3,
                            separatorBuilder: (context,index){
                             return SizedBox(width: 10.0,);
                            },
                            itemBuilder: (BuildContext context ,int index){
                             return Container(
                               width: MediaQuery.of(context).size.width*.325,
                               height: MediaQuery.of(context).size.height*.275,
                               decoration: BoxDecoration(
                                 //color: Colors.amber,
                                 borderRadius: BorderRadius.circular(20.0)
                               ),
                               child: Image.asset('assets/images/Whistler.png',
                               fit: BoxFit.fitHeight,

                               ),
                             );
                            },
                          ),
                        ),
                          ),
                      SizedBox(height: MediaQuery.of(context).size.height*.03,)
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
