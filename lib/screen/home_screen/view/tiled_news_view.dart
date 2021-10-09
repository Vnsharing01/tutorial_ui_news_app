import 'package:flutter/material.dart';
import 'package:tutorial_ui_news_app/constant/data.dart';
import 'package:tutorial_ui_news_app/model/news_model.dart';

class TiledNewsView extends StatelessWidget {
  TiledNewsView({Key? key}) : super(key: key);

  final List<NewsModel> models = StaticValues().news;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(models.length, (index) {
          NewsModel model = models[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    model.image,
                    height: 85,
                    width: 85,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            calulateReadingTime(model.description.length),
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            model.time,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  /// hiển thị đếm ngược thời gian đã đọc.
  String calulateReadingTime(int descriptionLenght) {
    int readTime = descriptionLenght > 200
        ? (descriptionLenght / 200).floor()
        : (descriptionLenght / 200 * 100).floor();
    String timeString = descriptionLenght > 200 ? 'mins' : 'secs';

    return '$readTime $timeString read';
  }
}
