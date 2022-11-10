import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:moripiuapp/drawer.dart';
import 'package:moripiuapp/mainmenu.dart';
import 'package:moripiuapp/register.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100,bottom: 30),
                    child: Container(
                      width: width*.6,
                      child: Image.asset('assets/logo-fix.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Username or Email',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 16),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Color(0xFE3E3E3E)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Password',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 16),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          suffixIcon: Icon(FontAwesomeIcons.eye),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Color(0xFE3E3E3E)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 25,bottom: 0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => MainMenu(),));
                    }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFEC10202),
                      ),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),textAlign: TextAlign.center,)))),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have any account ?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16)),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterPage(),));
                        }, child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.w700),))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text("Log in with",style: TextStyle(color: Colors.white,fontSize: 16),),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SignInButton(
                              button: Button.Twitter,
                              mini: true,
                              borderRadius: 50,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SignInButton(
                              button: Button.Google,
                              mini: true,
                              borderRadius: 50,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SignInButton(
                              button: Button.Facebook,
                              mini: true,
                              borderRadius: 50,
                            ),
                          ],
                        )
                    ]),
                  )
                ],
              ),
            ),
      ),
    );
  }
}