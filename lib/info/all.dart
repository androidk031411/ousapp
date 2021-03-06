
import 'package:html/dom.dart' as UserModel;
import "package:universal_html/controller.dart";
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;



class all extends StatefulWidget {
  const all({Key? key}) : super(key: key);

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {

  List<Article> articles = [];

  @override
  void initState(){
    super .initState();
    getWebsiteData();
    }
  Future getWebsiteData() async {
    final controller = WindowController();
    await controller.openHttp(
      method: 'GET',
      uri: Uri.parse('https://www.ous.ac.jp/topics/'),
    );
    final document = controller.window!.document;

    final titles = document
        .querySelectorAll("dl > dd >a")
    .map((element) => element.innerText)
        .toList();

    final urls = document
    .querySelectorAll("dl > dd > a  ")
    .map((element) =>  'https://www.ous.ac.jp/topics/${element.getAttribute("href")}')
    .toList();
    print('Count: ${urls.length}');




    setState((){
      articles = List.generate(
        titles.length,
            (index) => Article(
          title: titles[index],
          url: urls[index],
        ),
      );
    });

  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            await getWebsiteData();
          },
          child: ListView.builder(
          padding: const EdgeInsets.all(12),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Column(
            children:[
            ListTile(
            title: Text(article.title),
              subtitle: Text(article.url.replaceAll('./detail', '/detail')),
              onTap: () => launch(article.url.replaceAll('./detail', '/detail')),

            ),
              Divider(),//εΊεγη·
          ],
          );
        },
      ),
        )
    );
  }
}

class Article {
  final String url;
  final String title;

  const Article({
    required this.url,
    required this.title,

});
}



