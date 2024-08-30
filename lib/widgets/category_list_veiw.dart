import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';

import '../models/category_model.dart';

// ignore: must_be_immutable
class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  List<CategoryModel> categoryList = const [
    CategoryModel(
      categoryImage: "assets/images/business.avif",
      categoryName: "Business",
    ),
    CategoryModel(
      categoryImage: "assets/images/entertaiment.avif",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      categoryImage: "assets/images/technology.jpeg",
      categoryName: "technology",
    ),
    CategoryModel(
      categoryImage: "assets/images/sports.avif",
      categoryName: "sports",
    ),
    CategoryModel(
      categoryImage: "assets/images/science.avif",
      categoryName: "science",
    ),
    CategoryModel(
      categoryImage: "assets/images/health.avif",
      categoryName: "health",
    ),
    CategoryModel(
      categoryImage: "assets/images/general.avif",
      categoryName: "general",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categoryList[index],
          );
        },
      ),
    );
  }
}
