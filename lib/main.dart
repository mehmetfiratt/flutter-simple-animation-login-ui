import 'package:flutter/material.dart';
import 'package:login_ui_animation/Animation/FadeAnimation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: buildMainContainer(),
      ),
    );
  }

  Container buildMainContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[900],
              Colors.yellow[800],
              Colors.white,
            ],
            end: Alignment.bottomCenter),
      ),
      child: buildMainColumn(),
    );
  }

  Column buildMainColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: buildColumnHeaderTexts(),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(child: buildContainerMainShape())
      ],
    );
  }

  Column buildColumnHeaderTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeAnimation(1, (buildTextLogin())),
        FadeAnimation(
          1.3,
          buildTextWelcome(),
        ),
      ],
    );
  }

  Container buildContainerMainShape() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            buildContainerInputsDecoration(),
            SizedBox(height: 30),
            FadeAnimation(
              1.9,
              Text(
                "Forgot Password",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 30),
            buildContainerLoginButton(),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
              1.7,
              Text(
                "Continue With Social Media",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildRowSocialMedia()
          ],
        ),
      ),
    );
  }

  Container buildContainerInputsDecoration() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey[900],
                blurRadius: 10,
                offset: Offset(0, 10))
          ]),
      child: Column(
        children: [
          buildContainerEmail(),
          buildContainerPassword(),
        ],
      ),
    );
  }

  Row buildRowSocialMedia() {
    return Row(
      children: [
        Expanded(
          child: buildContainerFacebook(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: buildContainerGithub(),
        ),
      ],
    );
  }

  Container buildContainerGithub() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [Colors.black, Colors.blueGrey])),
      child: Center(
        child: FadeAnimation(
          1.5,
          Text(
            "GitHub",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Container buildContainerFacebook() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: FadeAnimation(
          1.6,
          Text("Facebook",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  Container buildContainerLoginButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.blue[900]),
      child: Center(
          child: FadeAnimation(
        1.8,
        Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }

  Container buildContainerPassword() {
    return Container(
      padding: EdgeInsets.all(10),
      //  margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200])),
      ),
      child: buildTextFieldPassword(),
    );
  }

  Container buildContainerEmail() {
    return Container(
      padding: EdgeInsets.all(10),
      //  margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200])),
      ),
      child: buildTextFieldEmail(),
    );
  }

  Text buildTextWelcome() {
    return Text(
      "Welcome Back",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Text buildTextLogin() {
    return Text(
      "Login",
      style: TextStyle(color: Colors.white, fontSize: 40),
    );
  }

  Widget buildTextFieldEmail() {
    return FadeAnimation(
      1.4,
      TextField(
        decoration: InputDecoration(
            hintText: "Emal or Phone",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }

  Widget buildTextFieldPassword() {
    return FadeAnimation(
      1.4,
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
