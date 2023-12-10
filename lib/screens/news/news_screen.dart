// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/screens/news_details/news_details_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
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
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NewsDetailsScreen();
              }));
            },
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://optavideo.com/images/chart/Test_chart_11.jpg'))),
            ),
            title: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non nulla a ante lobortis scelerisque nec vitae enim. Morbi placerat nibh est, elementum vulputate odio efficitur eget. Pellentesque eu sollicitudin nulla, quis maximus dui. Mauris ac arcu quis nisi rutrum tempor. Duis a molestie arcu, sed lacinia justo. Ut euismod, enim vitae eleifend scelerisque, turpis felis aliquam turpis, in hendrerit dolor leo id lectus. Fusce sed ornare ipsum, a aliquam arcu.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: const Text(
              'asd',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
