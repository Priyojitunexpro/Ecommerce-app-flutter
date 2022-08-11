import 'package:ecom2/screens/Favorite/favorite_screen.dart';
import 'package:ecom2/screens/Splashscreen/splashscreen.dart';
import 'package:ecom2/screens/details/details_screen.dart';
import 'package:ecom2/screens/loginscreen/signin.dart';
import 'package:ecom2/screens/profile/profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom2/screens/home/home_screen.dart';
final Map<String, WidgetBuilder> routes = {
  
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  //CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  FavoriteScreen.routeName:(context)=> FavoriteScreen(),
  splashscreen.routeName: (context) => splashscreen(),
  signin.routeName: (context) => const signin(),
};
