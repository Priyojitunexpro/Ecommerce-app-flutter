//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom2/components/coustom_bottom_nav_bar.dart';
import 'package:ecom2/enums.dart';
import 'package:ecom2/screens/profile/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //DocumentReference userName =FirebaseFirestore.instance.collection('user').doc('+918000086931');
  String image = '';
  String name = '';
  String address = '';
  String email = '';
  String phone = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*userName.get().then((DocumentSnapshot ds) {
      image = ds['image'];
      name = ds['Name'];
      address = ds['address'];
      email = ds['email'];
      phone = ds['phone'];
      //print(name);
      //print(email);
    });*/
  }

  @override
  Widget build(BuildContext context) {
    print(name);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('user')
              .doc('+919099731218')
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return new Text("Loading");
            var user = snapshot.data;
            return Body(
              image: (user as dynamic)['image'],
              name: (user as dynamic)['Name'],
              address: (user as dynamic)['address'],
              email: (user as dynamic)['email'],
              phone: (user as dynamic)['phone'],
            );
          }),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
