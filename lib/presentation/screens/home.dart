import 'package:flutter/material.dart';

import '../widgets/footer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black,
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black,
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black,
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black,
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black,
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
