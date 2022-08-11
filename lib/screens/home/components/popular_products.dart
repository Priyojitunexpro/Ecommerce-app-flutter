import 'package:ecom2/components/product_card.dart';
import 'package:ecom2/models/Product.dart';
import 'package:ecom2/screens/details/details_screen.dart';
import 'package:ecom2/screens/home/components/section_title.dart';
import 'package:ecom2/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Products",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(context, DetailsScreen.routeName,arguments: ProductDetailsArguments(product: demoProducts[index])),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
