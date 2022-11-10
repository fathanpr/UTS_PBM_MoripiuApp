import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfilPage extends StatefulWidget {
  ProfilPage({super.key});
  bool isVisible = true;
  String isPassword = "user123567";
  

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool IsVisible = true;
  String isPassword = "user123456";

  void _Visible(){
    setState(() {
      IsVisible = !IsVisible;
      if(IsVisible){
        isPassword = "user123456"; 
      }else{
        isPassword = "*******";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios)),
        title: Container(child: Row(children: [
          Text("PROFILE"),
        ],)),
        backgroundColor: Colors.transparent,
         elevation: 0.0,
      ),
      body: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profil.png'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Username",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("User123",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white),)),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Email or Mobile Phone",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("user123@gmail.com",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white),)),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Password",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white),)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$isPassword",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white),),
              SizedBox(
                width: 8,
              ),
              IconButton(
              onPressed: _Visible,tooltip: 'increment',icon: Icon(Icons.remove_red_eye_outlined,size: 20,),color: Colors.white,
            ),
            ],
          ),
        ],
      )),
    );
  }
}