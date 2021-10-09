import 'package:flutter/material.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(fontSize: 18),
        cursorColor: Colors.black54,
        maxLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search news',
          filled: true,
          fillColor: Colors.grey[200],
          suffixIcon: Icon(
            Icons.search_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
