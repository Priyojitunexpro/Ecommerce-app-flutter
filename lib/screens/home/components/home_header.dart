import 'package:ecom2/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecom2/screens/home/components/search_field.dart';
import 'package:ecom2/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
                'assets/images/WhatsApp_Image_2022-05-28_at_9.39.35_AM-removebg-preview-removebg-preview.png',
                width: 100,
                height: 50,
                fit: BoxFit.fill),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchField(),
              IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                numOfItems: 3,
                press: () {},
              ),
              IconBtnWithCounter(
                svgSrc: "assets/icons/Bell.svg",
                numOfItems: 3,
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
