import 'package:flutter/material.dart';
import 'package:uts_augie/DetailPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, String>> myData = [
    {
      'title': 'Nasi Goreng',
      'subtitle': 'Nasi goreng spesial dengan telur dan ayam',
    },
    {
      'title': 'Mie Goreng',
      'subtitle': 'Mie goreng pedas dengan sayuran dan telur',
    },
    {
      'title': 'Sate Ayam',
      'subtitle': 'Sate ayam spesial dengan bumbu kacang',
    },
    {
      'title': 'Bakso',
      'subtitle': 'Bakso Sapi dengan mie instan',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan'),
      ),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(myData[index]['title']!),
            subtitle: Text(myData[index]['subtitle']!),
            leading: CircleAvatar(
              child: Text(myData[index]['title']![0]),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Beralih ke halaman detail item
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(itemData: myData[index])),
              );
            },
          );
        },
      ),
    );
  }
}

