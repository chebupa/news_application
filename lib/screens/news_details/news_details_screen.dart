// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_application/models/news.dart';
// import 'package:news_application/screens/news/news_screen.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 58),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (news.imageUrl != null)
                Container(
                  height: 235,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        news.imageUrl!,
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  news.title,
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  news.description,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: MaterialButton(
                    color: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Перейти в источник'),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
