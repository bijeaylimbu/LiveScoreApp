import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:live_score_app/screens/Login.dart';
import 'package:live_score_app/screens/Team1Name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:live_score_app/screens/Team1Name.dart';
import './screens/AllMatches.dart';
import './screens/Update.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: AllMatches(),
      theme: ThemeData(
        accentColor: Colors.white70
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  // SharedPreferences sharedPreferences;

  // @override
  // void initState() {
  //   super.initState();
  //   checkLoginStatus();
  // }

  // checkLoginStatus() async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   if(sharedPreferences.getString("token") == null) {
  //     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Colors.white)),
        // actions: <Widget>[
        //   FlatButton(
        //     onPressed: () {
        //       sharedPreferences.clear();
        //       sharedPreferences.commit();
        //       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
        //       // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
        //     },
        //     child: Text("Log Out", style: TextStyle(color: Colors.white)),
        //   ),
        // ],
      ),
      body:LoginPage(),
    
    );
  }
}