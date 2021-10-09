import 'package:flutter/material.dart';
import 'package:tutorial_ui_news_app/screen/home_screen/view/search_bar_view.dart';

class TopBarView extends StatelessWidget {
  const TopBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchBarView()),
        SizedBox(width: 10),
        Icon(Icons.menu, size: 30),
      ],
    );
  }
}
