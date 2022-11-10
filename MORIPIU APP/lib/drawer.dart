import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moripiuapp/login.dart';
import 'package:moripiuapp/mainmenu.dart';
import 'package:moripiuapp/profil.dart';
import 'package:moripiuapp/setting_page.dart';

class SideDrawer extends StatefulWidget {
  SideDrawer({super.key});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Color(0xFEC10202),
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.zero,
                width: 50,
                height: 50,
                child: CircleAvatar(backgroundImage: AssetImage('assets/profil.png')),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 40),
                    child: Text("Hai, User123!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),textAlign: TextAlign.start,)),
                  Text("user123@gmail.com",style: TextStyle(color: Color.fromARGB(92, 255, 255, 255),fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
                ],
              ),
          ]),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListTile(
            shape: RoundedRectangleBorder( //<-- SEE HERE
            borderRadius: BorderRadius.circular(5),
            ),
            title: Row(
              children: [
                Icon(FontAwesomeIcons.solidUser,color: Colors.white,size: 18,),
                SizedBox(
                  width: 15,
                ),
                Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),),
              ],
            ),
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilPage(),));
            }),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListTile(
            shape: RoundedRectangleBorder( //<-- SEE HERE
            borderRadius: BorderRadius.circular(5),
            ),
            title: Row(
              children: [
                Icon(FontAwesomeIcons.home,color: Colors.white,size: 18,),
                SizedBox(
                  width: 15,
                ),
                Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),),
              ],
            ),
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder:(context) => MainMenu(),));
            }),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListTile(
            shape: RoundedRectangleBorder( //<-- SEE HERE
            borderRadius: BorderRadius.circular(5),
            ),
            title: Row(
              children: [
                Icon(FontAwesomeIcons.gear,color: Colors.white,size: 18,),
                SizedBox(
                  width: 15,
                ),
                Text("Setting",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),),
              ],
            ),
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder:(context) => SettingPage(),));
            }),
          ),
        ),
        SizedBox(
          height: height*.2,
        ),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFEC10202),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
          }, 
          child: 
          Text("LOGOUT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 8),)),
      ],
    );
  }
}