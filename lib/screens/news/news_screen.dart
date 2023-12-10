// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/models/news.dart';
import 'package:news_application/screens/news_details/news_details_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final news = <News>[
    News(
      title: 'Something new',
      description: 'buy something new',
      imageUrl: 'https://optavideo.com/images/chart/Test_chart_11.jpg',
      sourceUrl: 'google.com',
    ),
    News(
      title: 'puk',
      description: 'puk description',
      imageUrl: 'https://optavideo.com/images/chart/Test_chart_11.jpg',
      sourceUrl: 'google.com',
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Все новости',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          final newsItem = news[index];

          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NewsDetailsScreen(news: newsItem);
              }));
            },
            leading: newsItem.imageUrl != null
                ? Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              newsItem.imageUrl!,
                            ))),
                  )
                : SizedBox.shrink(),
            title: Text(
              newsItem.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              newsItem.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
