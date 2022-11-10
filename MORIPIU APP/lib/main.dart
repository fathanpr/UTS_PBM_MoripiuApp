import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:moripiuapp/login.dart';
import 'mainmenu.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.removeAfter(initialization);
  runApp(MoripiuApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 3));
}



class MoripiuApp extends StatelessWidget { 
  MaterialColor mycolor = MaterialColor(Color(0xFE171717).value,<int, Color>{
      50: Color(0xFE171717),
      100: Color(0xFE171717),
      200: Color(0xFE171717),
      300: Color(0xFE171717),
      400: Color(0xFE171717), 
      500: Color(0xFE171717),
      600: Color(0xFE171717),
      700: Color(0xFE171717),
      800: Color(0xFE171717),
      900: Color(0xFE171717),
    },
  );
  MoripiuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moripiu App',
      theme: ThemeData(
        scaffoldBackgroundColor: mycolor,
        backgroundColor: mycolor,
        primarySwatch: mycolor,
        textTheme: GoogleFonts.rajdhaniTextTheme(
           Theme.of(context).textTheme,
      ),
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.white),
      ),
      home: LoginPage(),
    );
  }
}
