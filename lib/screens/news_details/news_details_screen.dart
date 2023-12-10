// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/screens/news/news_screen.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

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
              Container(
                height: 235,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://optavideo.com/images/chart/Test_chart_11.jpg'))),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non nulla a ante enim. Morbi placerat nibh est, elementum vulputate odio efficitur eget. Pellentes.',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non nulla a ante lobortis scelerisque nec vitae enim. Morbi placerat nibh est, elementum vulputate odio efficitur eget. Pellentesque eu sollicitudin nulla, quis maximus dui. Mauris ac arcu quis nisi rutrum tempor. Duis a molestie arcu, sed lacinia justo. Ut euismod, enim vitae eleifend scelerisque, turpis felis aliquam turpis, in hendrerit dolor leo id lectus. Fusce sed ornare ipsum, a aliquam arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non nulla a ante lobortis scelerisque nec vitae enim. Morbi placerat nibh est, elementum vulputate odio efficitur eget. Pellentesque eu sollicitudin nulla, quis maximus dui. Mauris ac arcu quis nisi rutrum tempor. Duis a molestie arcu, sed lacinia justo. Ut euismod, enim vitae eleifend scelerisque, turpis felis aliquam turpis, in hendrerit dolor leo id lectus. Fusce sed ornare ipsum, a aliquam arcu.'),
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
                      children: [Text('Перейти в источник')],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
