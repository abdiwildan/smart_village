import 'package:flutter/material.dart';

import '../Screens/detail_news_screen.dart';
import '../models/article_model.dart';
import 'image_container.dart';

class NewestWidget extends StatelessWidget {
  const NewestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;

    return Column(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: articles.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailNews.routeName,
                      arguments: articles[index],
                    );
                  },
                  child: Row(
                    children: [
                      ImageContainer(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.all(10.0),
                        borderRadius: 5,
                        imageUrl: articles[index].imageUrl,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              articles[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.schedule,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                                  style: const TextStyle(fontSize: 12),
                                ),
                                const SizedBox(width: 20),
                                const Icon(
                                  Icons.visibility,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${articles[index].views} views',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })))
    ]);
  }
}
