import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  final Map<String, String> itemData;

  const DetailPage({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemData['title']!),
      ),
      body: Center(
        child: Text(itemData['subtitle']!),
      ),
    );
  }
}