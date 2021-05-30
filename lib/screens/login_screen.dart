import 'package:flutter/material.dart';
import 'package:loginapp/screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 20);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );

    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );
    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          if (username == "Pranisha" && password == "password123") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print("login is failed");
          }
        },
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.supervised_user_circle,
                      size: 100,
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    usernameField,
                    SizedBox(
                      height: 10,
                    ),
                    passwordField,
                    SizedBox(
                      height: 10,
                    ),
                    myLoginButton
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
