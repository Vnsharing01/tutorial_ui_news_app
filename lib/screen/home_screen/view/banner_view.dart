import 'package:flutter/material.dart';

class BannerView extends StatelessWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Chào Ngày Mới',
            style: TextStyle(fontSize: 30),
          ),
          Text('Expore the world with one Click!')
        ],
      ),
    );
  }
}
