import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:untitled/models/custom_Card.dart';
import 'package:untitled/components/Custom_Card.dart';
import 'package:untitled/screens/Details/details.dart';
import 'package:untitled/screens/Details/details2.dart';
import 'package:untitled/screens/Details/details3.dart';
import 'package:untitled/screens/Details/details4.dart';

class categoriesScreen extends StatefulWidget {
  @override
  _categoriesScreenState createState() {
    return _categoriesScreenState();
  }
}

class _categoriesScreenState extends State<categoriesScreen> {
  var text = String.fromCharCodes(Runes(
    '\u0024140.-',
  ));
  var text1 = String.fromCharCodes(Runes(
    '\u0024140.-',
  ));
  var text2 = String.fromCharCodes(Runes(
    '\u0024140.-',
  ));
  var text3 = String.fromCharCodes(Runes(
    '\u0024140.-',
  ));
  VoidCallback? onCardClick;
  var radius = Radius.circular(50);
  void selectscreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return DetailsScreen();
    }));
  }

  void selectscreen2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return DetailsScreen2();
    }));
  }

  void selectscreen3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return DetailsScreen3();
    }));
  }

  void selectscreen4(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return DetailsScreen4();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.menu,
            size: 40,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          margin: EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                'Categories',
                style: TextStyle(
                    color: Color(0xff070707),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
              InkWell(
                onTap: () {}, // handle your image tap here
                child: Image.asset(
                  'images/icon-05.png',
                  height: 32,
                ),
              )
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        elevation: 2,
                        minimumSize: Size(120, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10)),
                    child: Row(children: [
                      Image(
                        image: AssetImage('images/icon-03.png'),
                        height: 30,
                      ),
                      Text("Price Range"),
                    ]),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        elevation: 2,
                        minimumSize: Size(90, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10)),
                    child: Row(children: [
                      Image(
                        image: AssetImage('images/icon-03.png'),
                        height: 30,
                      ),
                      Text("Tags"),
                    ]),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        elevation: 2,
                        minimumSize: Size(100, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10)),
                    child: Row(children: [
                      Image(
                        image: AssetImage('images/icon-03.png'),
                        height: 30,
                      ),
                      Text("Style"),
                    ]),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        elevation: 2,
                        minimumSize: Size(100, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10)),
                    child: Row(children: [
                      Image(
                        image: AssetImage('images/icon-03.png'),
                        height: 30,
                      ),
                      Text("Color"),
                    ]),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              child: TabBarView(
                children: <Widget>[
                  getUserGrid(),
                  Icon(
                    Icons.chat,
                    size: 100,
                  ),
                  Icon(Icons.directions_car, size: 350),
                  Icon(Icons.directions_bike, size: 350),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4),
                              blurRadius: 5.0)
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [
                            Colors.deepPurple.shade400,
                            Colors.deepPurple.shade200,
                          ],
                        ),
                        color: Colors.deepPurple.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(200, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "Scan my Space",
                            style: TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getUserGrid() {
    return GridView.count(
        //padding: EdgeInsets.all(16),
        //mainAxisSpacing: 10,
        //crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          CustomeCard(
            cardModel: CustomCardModel(
              price: "-\$160.-",
              subtitle: "Sofas",
              image: "images/no.webp",
              onCardClick: () {
                selectscreen(context);
              },
            ),
          ),
          CustomeCard(
            cardModel: CustomCardModel(
              price: "-\$150.-",
              subtitle: "night stand",
              image: "images/large.jpg",
              onCardClick: () {
                selectscreen2(context);
              },
            ),
          ),
          CustomeCard(
            cardModel: CustomCardModel(
              price: "-\$190.-",
              subtitle: "chair",
              image: "images/brand.jpg",
              onCardClick: () {
                selectscreen3(context);
              },
            ),
          ),
          CustomeCard(
            cardModel: CustomCardModel(
              price: "-\$200.-",
              subtitle: "Sofas",
              image: "images/eco.jpg",
              onCardClick: () {
                selectscreen4(context);
              },
            ),
          ),
        ]);
  }
}
