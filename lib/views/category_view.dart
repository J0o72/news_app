import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile_list_builder.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.categoryName});

  String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [
            NewsListBuilder(category: categoryName),
          ],
        ),
      ),
    );
  }
}
