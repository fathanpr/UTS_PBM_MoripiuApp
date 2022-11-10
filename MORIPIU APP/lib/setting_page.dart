import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moripiuapp/login.dart';
import 'package:moripiuapp/mainmenu.dart';
import 'package:moripiuapp/profil.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios)),
        title: Container(child: Row(children: [
          Text("Settings"),
        ],)),
        backgroundColor: Colors.transparent,
         elevation: 0.0,
      ),
      body: Center(
        child: Container(
          width: 250,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("About Us",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Our app is for review and leak new movie, not for watching a movie!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),textAlign: TextAlign.center,)),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Version",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Version V1.0.0 BETA",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),)),
          ],
        )),
      ),
    );
  }
}
