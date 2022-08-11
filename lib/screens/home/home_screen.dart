import 'package:ecom2/components/coustom_bottom_nav_bar.dart';
import 'package:ecom2/enums.dart';
import 'package:ecom2/screens/home/components/body.dart';
import 'package:ecom2/size_config.dart';
import 'package:flutter/material.dart';

import 'package:ecom2/enums.dart';
class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
