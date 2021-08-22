import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:untitled/screens/categories.dart';

class DetailsScreen3 extends StatefulWidget {
  @override
  _DetailsScreen3State createState() {
    return _DetailsScreen3State();
  }
}

class _DetailsScreen3State extends State<DetailsScreen3> {
  late ScrollController _scrollController;
  double top = 256.0 - 4.0;
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  VoidCallback? onCardClick;
  int n = 0;

  void add() {
    setState(() {
      n++;
    });
  }

  void minus() {
    setState(() {
      if (n != 0) n--;
    });
  }

  void selectscreen3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return categoriesScreen();
    }));
  }

  var text = String.fromCharCodes(Runes(
    '\u0024140.-',
  ));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                  onPressed: () {
                    selectscreen3(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              expandedHeight: 280.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/brand.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverFillRemaining(
                child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 3),
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Chair",
                            style: TextStyle(
                              color: Color(0xff1f1635),
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Text(
                            " chairs",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 3),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "\$190.-",
                            style: TextStyle(color: Colors.blue, fontSize: 35),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 3),
                        alignment: Alignment.topLeft,
                        child: Text(
                          '''
lorern ipsum dolor sit amet,consecte
turer adipiscingelit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore
magna eliquarn erat volutpat. ''',
                          maxLines: 20,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [Text("colors:")],
                            ),
                          ),
                          Property()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
        _buildFab()
      ],
    ));
  }

  Widget _buildFab() {
    final double defaultTopMargin = 250;
    final double scaleStart = 230;
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        //offset between scaleStart and scaleEnd => scale down
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return Positioned(
        top: top,
        right: 16.0,
        child: Transform(
          transform: Matrix4.identity()..scale(scale),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(70, 70)),
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
                          child: Icon(
                            Icons.shopping_cart,
                            size: 40,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget Property() {
    return Container(
      margin: EdgeInsets.only(left: 5),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow, shape: BoxShape.circle),
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink, shape: BoxShape.circle),
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          minus();
                        },
                        child: new Icon(
                          Icons.minimize,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('$n', style: new TextStyle(fontSize: 40.0)),
                      SizedBox(
                        width: 5,
                      ),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          add();
                        },
                        child: new Icon(Icons.add, color: Colors.black),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
