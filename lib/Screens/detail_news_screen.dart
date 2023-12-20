import 'package:flutter/material.dart';
import 'package:smart_village/Widgets/image_container.dart';
import 'package:smart_village/models/article_model.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({super.key});

  static const routeName = '/article';

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
        width: double.infinity,
        imageUrl: article.imageUrl,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          extendBodyBehindAppBar: true,
          body: ListView(
            children: [
              _NewsHeadLine(
                article: article,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)
                  ),
                 color: Colors.white,
                ),
                child: Column(
                  children: [
                    Text(
                      article.title,

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      article.body,

                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class _NewsHeadLine extends StatelessWidget {
  const _NewsHeadLine({
    super.key,
    required this.article,
  });

  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          Text(
            article.title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              height: 1.25,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            article.subtitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              height: 1.25,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
