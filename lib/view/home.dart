// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutternews/helper/data.dart';
import 'package:flutternews/helper/news.dart';
import 'package:flutternews/model/article_model.dart';
import 'package:flutternews/view/article_view.dart';
import 'package:flutternews/view/category_news.dart';

import '../model/category_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var categories = <CategoryModel>[];
  var articles = <ArticleModel>[];
  bool _loading = true;
  var list = [
    "Business",
    "General",
    "Health",
    "Science",
    "Sports",
    "Technology",
    "Entertainment"
  ];

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getArticle();
  }

  getArticle() async {
    News newsObj = News();
    await newsObj.getNews();
    articles = newsObj.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          // leading: const Icon(Icons.menu_outlined),
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
                        fontWeight: FontWeight.w600))
              ]))),
      drawer: SafeArea(
        child: Drawer(
          elevation: 0.5,
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                curve: Curves.elasticIn,
                padding: const EdgeInsets.only(top: 75, left: 25),
                decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage('images/bg-1.jpg'), fit: BoxFit.cover),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 59, 108, 253),
                      Color.fromARGB(255, 123, 222, 247),
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: const TextSpan(
                            text: 'Flutter',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                            children: [
                          TextSpan(
                              text: 'News',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800))
                        ])),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'rilon.maharjan@gmail.com',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
               const SizedBox(
                      height: 15,
                    ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(
                  Icons.business,
                ),
                iconColor: Colors.black,
                title: Text(
                  list[0],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[0].toLowerCase(),
                              )));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(Icons.badge),
                iconColor: Colors.black,
                title: Text(
                  list[1],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[1].toLowerCase(),
                              )));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(Icons.health_and_safety),
                iconColor: Colors.black,
                title: Text(
                  list[2],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[2].toLowerCase(),
                              )));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(Icons.science),
                iconColor: Colors.black,
                title: Text(
                  list[3],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[3].toLowerCase(),
                              )));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(Icons.sports),
                iconColor: Colors.black,
                hoverColor: const Color.fromARGB(255, 184, 183, 183),
                title: Text(
                  list[4],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[4].toLowerCase(),
                              )));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(Icons.settings_applications_outlined),
                iconColor: Colors.black,
                title: Text(
                  list[5],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[5].toLowerCase(),
                              )));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30),
                leading: const Icon(
                  Icons.movie,
                ),
                iconColor: Colors.black,
                title: Text(
                  list[6],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryNews(
                                category: list[6].toLowerCase(),
                              )));
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              //Categories
              SizedBox(
                height: 65,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryTile(
                        imgUrl: categories[index].imageUrl,
                        ctgName: categories[index].categoryName,
                      );
                    }),
              ),

              _loading
                  ? Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const CircularProgressIndicator(),
                      ),
                    )
                  : //Articles
                  Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imgUrl: articles[index].urlToImage,
                            title: articles[index].title,
                            desc: articles[index].description,
                            url: articles[index].url,
                          );
                        },
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imgUrl, ctgName;
  const CategoryTile({Key? key, this.imgUrl, this.ctgName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryNews(
                      category: ctgName.toLowerCase(),
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                width: 109.4,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 109.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(125, 0, 0, 0)),
              child: Text(
                ctgName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final imgUrl, title, desc, url;
  const BlogTile(
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
