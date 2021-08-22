import 'package:flutter/material.dart';
import 'package:untitled/models/custom_Card.dart';

class CustomeCard extends StatelessWidget {
  final CustomCardModel cardModel;
  CustomeCard({required this.cardModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.cardModel.onCardClick != null) {
          this.cardModel.onCardClick!();
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(500.0),
        ),
        margin: EdgeInsets.all(10),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            image: DecorationImage(
              image: AssetImage(
                "${this.cardModel.image}",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 180),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "images/icon-02.png",
                        height: 50,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 110),
                    child: Align(
                      alignment: FractionalOffset.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 10.0),
                          child: Column(
                            children: [
                              Text(
                                "${this.cardModel.subtitle}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text(
                                "${this.cardModel.price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
