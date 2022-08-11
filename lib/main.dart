import 'package:ecom2/routes.dart';
import 'package:ecom2/screens/Splashscreen/splashscreen.dart';
import 'package:ecom2/screens/home/home_screen.dart';
import 'package:ecom2/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? splashscreen.routeName
          : HomeScreen.routeName,
      routes: routes,
    );
  }
}
