import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:untitled/screens/categories.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  VoidCallback? onCardClick;
  bool passwordvisible = true;
  void selectscreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return categoriesScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: DropShadowImage(
                offset: Offset(10, 10),
                scale: 1,
                blurRadius: 10,
                borderRadius: 10,
                image: Image.asset(
                  'images/icon-08.png',
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Find your",
                    style: TextStyle(
                        color: Color(0xff1f1635),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "unique piece!",
                    style: TextStyle(
                        color: Color(0xff1f1635),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "join us,",
                    style: TextStyle(color: Color(0xff1f1635)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(40.0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: "Enter Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        labelText: "Password",
                        hintText: "Enter Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordvisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordvisible = !passwordvisible;
                            });
                          },
                        )),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordvisible,
                  ),
                ],
              ),
            ),
            Container(
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
                          minimumSize: MaterialStateProperty.all(Size(220, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          selectscreen(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "Create Account",
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
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: [
                  Text("sign up with"),
                  InkWell(
                    onTap: () {}, // handle your image tap here
                    child: Image.asset(
                      'images/icon-01.png',
                      fit: BoxFit.cover, // this is the solution for border
                      width: 110.0,
                      height: 110.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('The button is clicked!');
                            },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
