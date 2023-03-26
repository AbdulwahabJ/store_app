// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';

import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.cartPlus),
              color: Colors.black)
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 75),
        child: GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 90,
            ),
            itemBuilder: (context, index) {
              return CustomCard();
            }),
      ),
    );
  }
}
