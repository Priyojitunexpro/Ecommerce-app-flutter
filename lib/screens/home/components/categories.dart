import 'package:ecom2/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  //const Categories({Key? key}) : super(key: key);
  List<Map<String, dynamic>> categories = [
    {
      "icon": "assets/icons/kitchen-pack-stove-svgrepo-com.svg",
      "text": "Home Product"
    },
    {"icon": "assets/icons/lipstick-makeup-svgrepo-com.svg", "text": "Beauty"},
    {"icon": "assets/icons/shirt-clothes-svgrepo-com.svg", "text": "Fashion"},
    {"icon": "assets/icons/gift-svgrepo-com.svg", "text": "Gift items"},
    {
      "icon": "assets/icons/usb-charger-wire-svgrepo-com.svg",
      "text": "Mobile Access."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: getProportionateScreenWidth(55),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(icon),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                text,
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
