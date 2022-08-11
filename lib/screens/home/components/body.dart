import 'package:ecom2/screens/home/components/categories.dart';
import 'package:ecom2/screens/home/components/discount_banner.dart';
import 'package:ecom2/screens/home/components/home_header.dart';
import 'package:ecom2/screens/home/components/popular_products.dart';
import 'package:ecom2/screens/home/components/special_offers.dart';
import 'package:ecom2/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Categories(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          PopularProducts(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
        ],
      ),
    ));
  }
}
