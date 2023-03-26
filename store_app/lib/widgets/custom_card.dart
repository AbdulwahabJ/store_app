// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HandBag Lv',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          r'$ 255',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.favorite, color: Colors.red)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 35,
            top: -55,
            child: Image.network(
              'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
