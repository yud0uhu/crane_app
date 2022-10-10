import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> textType = [
    {
      'text': "アスペン(米国)",
      'subtext': "乗り換え:1回・6h15m",
      'image': Image.network(
          height: 75, "https://picsum.photos/250?image=9", fit: BoxFit.cover)
    },
    {
      'text': "ビッグサー(米国)",
      'subtext': "直行便・13h30m",
      'image': Image.network(
          height: 75, "https://picsum.photos/250?image=9", fit: BoxFit.cover)
    },
    {
      'text': "クンブ渓谷(ネパール)",
      'subtext': "直行便・5h16m",
      'image': Image.network(
          height: 75, "https://picsum.photos/250?image=9", fit: BoxFit.cover)
    },
    {
      'text': "マチュピチュ(ペルー)",
      'subtext': "乗り継ぎ:2回・19h40m",
      'image': Image.network(
          height: 75, "https://picsum.photos/250?image=9", fit: BoxFit.cover)
    },
    {
      'text': "マレ(モルディブ)",
      'subtext': "直行便:2回・8h24m",
      'image': Image.network(
          height: 75, "https://picsum.photos/250?image=9", fit: BoxFit.cover)
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Scrollbar(
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
              Text("目的地でフライトを検索"),
              Column(
                  children: textType
                      .map(
                        (Map<String, dynamic> e) => Container(
                          padding: const EdgeInsets.all(10),
                          child: Wrap(
                            spacing: 8.0, // gap between adjacent chips
                            runSpacing: 4.0, // gap between lines
                            children: <Widget>[
                              Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: e['image']),
                                  SizedBox(
                                    width: 200,
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(e['text'],
                                            style: TextStyle(fontSize: 20)),
                                        Text(e['subtext'],
                                            style: TextStyle(
                                                color: Colors.grey[800]))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList())
            ])))));
  }
}
