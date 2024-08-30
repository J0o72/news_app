import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            articleModel: articles[index],
          );
        },
        childCount: articles.length,
      ),
    );

    // <---------- First Solution -------------->
    // return ListView.builder(
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return NewsTile();
    //     });
  }
}
