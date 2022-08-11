import 'package:ecom2/components/coustom_bottom_nav_bar.dart';
import 'package:ecom2/components/product_card.dart';
import 'package:ecom2/enums.dart';
import 'package:ecom2/models/Product.dart';
import 'package:flutter/material.dart';

import '../details/details_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);
  static String routeName = '/favorite';
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite items'),
      ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              demoProducts.length,
              (index) {
                if (demoProducts[index].isFavourite)
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                        context, DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(
                            product: demoProducts[index])),
                  );
                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
