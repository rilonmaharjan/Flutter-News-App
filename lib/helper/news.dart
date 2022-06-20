import 'dart:convert';

import '../model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  var news = <ArticleModel>[];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=b7f8a45263a047baa07a4aebda2dd6d2";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              author: element['author'],
              content: element['content'],
              description: element['description'],
              title: element["title"],
              url: element["url"],
              urlToImage: element["urlToImage"]);

              news.add(articleModel);
        }
      });
    }
  }
}


class CategoryNewsClass {
  var catNews = <ArticleModel>[];

  Future<void> getCatNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=b7f8a45263a047baa07a4aebda2dd6d2";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              author: element['author'],
              content: element['content'],
              description: element['description'],
              title: element["title"],
              url: element["url"],
              urlToImage: element["urlToImage"]);

              catNews.add(articleModel);
        }
      });
    }
  }
}
