import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
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
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text("Create New Account",style: TextStyle(color: Colors.white,fontSize: 24),),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text('Username',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 16),)),
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
                        child: Text('Email or Phone Number',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 16),)),
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
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Confirm Password',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 16),)),
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
                      Navigator.pop(context);
                    }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFEC10202),
                      ),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),textAlign: TextAlign.center,)))),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have account ?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16)),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text('Log In',style: TextStyle(fontWeight: FontWeight.w700),))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text("Sign Up with",style: TextStyle(color: Colors.white,fontSize: 16),),
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
                        ),
                        SizedBox(
                          height: 30,
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