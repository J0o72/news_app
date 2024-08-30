import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String categoryType}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=16fa754245134282958c868ae4ad76f9&category=$categoryType");

      Map<String, dynamic> jsonData = response.data;

      // print(jsonData["status"]);
      // print(jsonData["totalResults"]);

      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"],
        );

        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
