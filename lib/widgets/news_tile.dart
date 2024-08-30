import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/new_view.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.articleModel});

  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return NewView(
                      articleModel: articleModel,
                    );
                  },
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                articleModel.image ??
                    "https://images.pexels.com/photos/1421903/pexels-photo-1421903.jpeg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              // child: Image.asset(
              //   "assets/images/entertaiment.avif",
              //   width: double.infinity,
              //   height: 200,
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          Text(
            articleModel.title ?? "No Title",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articleModel.subTitle ?? "No SubTitle",
            style: const TextStyle(
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
