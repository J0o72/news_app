import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewView extends StatelessWidget {
  NewView({super.key, required this.articleModel});

  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                articleModel.image ??
                    "https://images.pexels.com/photos/1421903/pexels-photo-1421903.jpeg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              articleModel.title ?? "No Title",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              articleModel.subTitle ?? "No SubTitle",
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
