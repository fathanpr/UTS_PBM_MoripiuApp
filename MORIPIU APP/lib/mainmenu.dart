import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moripiuapp/detail_page.dart';
import 'package:moripiuapp/drawer.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'list_page.dart';
import 'package:moripiuapp/moviemodel.dart';

class MainMenu extends StatefulWidget {
  MainMenu({super.key});
  

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          InkWell(
            onTap: () => Navigator.of(context).push(_createRoute()),
            child: Icon(Icons.search)),
        ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                      SizedBox(
                        height: height*.4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: ClipRRect(
                          child: Image.asset(listMovie[0].image,height: 200, width: width*1,fit: BoxFit.cover,),
                        ),),
                      
                      SizedBox(
                        height: height*.4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: ClipRRect(
                          child: Image.asset(listMovie[3].image,height: 200, width: width*1,fit: BoxFit.cover,),
                        ),),
      
                        SizedBox(
                        height: height*.4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: ClipRRect(
                          child: Image.asset(listMovie[2].image,height: 200, width: width*1,fit: BoxFit.cover,),
                        ),),

                        SizedBox(
                        height: height*.4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: ClipRRect(
                          child: Image.asset(listMovie[5].image,height: 200, width: width*1,fit: BoxFit.cover,),
                        ),),
                    ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5),
                      child: Text("Top Rated",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color:Colors.white),textAlign: TextAlign.start,),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[1]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[1].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[1].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[6]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[6].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[6].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[4]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[4].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[4].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[7]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[7].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[7].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                  ]),
                ),
      
                SizedBox(
                  height: 15,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5),
                      child: Text("Upcoming 2022",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color:Colors.white),textAlign: TextAlign.start,),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[6]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[6].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[6].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[2]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[2].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[2].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[3]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[3].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[3].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[4]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[4].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[4].image,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                  ]),
                ),
      
                SizedBox(
                  height: 15,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5),
                      child: Text("Best Indo",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color:Colors.white),textAlign: TextAlign.start,),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[1]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[1].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[1].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[3]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[3].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[3].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[2]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[2].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[2].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                      Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(movie: listMovie[7]),)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(listMovie[7].image,height: 170, width: width*.4,fit: BoxFit.cover,),
                              SizedBox(height: 5,),
                              Text(listMovie[7].title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white))
                            ],
                          ),
                        ),
                      ),),
                  ]),
                ),
            ],
          ),
        ),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width*.6,
        child: Drawer(
          backgroundColor: Color(0xFE171717),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SideDrawer(),
              ],) ),)),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ListPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}