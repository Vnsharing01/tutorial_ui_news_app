import 'package:flutter/material.dart';
import 'package:tutorial_ui_news_app/screen/home_screen/view/category_selecter_view.dart';

import 'view/banner_view.dart';
import 'view/new_carousel.dart';
import 'view/tiled_news_view.dart';
import 'view/top_bar_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TopBarView(),
                      SizedBox(height: 10),
                      BannerView(),
                    ],
                  ),
                ),
                NewsCarouselView(),
                SizedBox(height: 10),
                CategorySelecterView(),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    TiledNewsView(),
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
