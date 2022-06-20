// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutternews/helper/news.dart';

import '../model/article_model.dart';
import 'article_view.dart';

class CategoryNews extends StatefulWidget {
  final category ;
  const CategoryNews({Key? key, this.category}) : super(key: key);

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  var articles = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getCategoryArticle();
  }

  getCategoryArticle() async {
    CategoryNewsClass catNewsObj = CategoryNewsClass();
    await catNewsObj.getCatNews(widget.category);
    articles = catNewsObj.catNews;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          // elevation: 0.0,
          title: RichText(
              text: const TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: 'News',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ])),
          actions: [
            Opacity(
              opacity: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Icon(
                  Icons.save,
                ),
              ),
            )
          ],
        ),
        body: _loading
            ? Center(
                // ignore: avoid_unnecessary_containers
                child: Container(
                child: const CircularProgressIndicator(),
              ))
            : SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        return CatBlogTile(
                          imgUrl: articles[index].urlToImage,
                          title: articles[index].title,
                          desc: articles[index].description,
                          url: articles[index].url,
                        );
                      },
                    )),
              ));
  }
}

class CatBlogTile extends StatelessWidget {
  final imgUrl, title, desc, url;
  const CatBlogTile(
      {Key? key, @required this.imgUrl,
      @required this.title,
      @required this.desc,
      @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Article(
                      blogUrl: url,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 18),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imgUrl)),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: const TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
