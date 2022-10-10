import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key});
  final List<Map<String, dynamic>> textType = [
    {
      'text': "訪問者数",
      'icon': const Icon(color: Color.fromRGBO(199, 158, 191, 1), Icons.person)
    },
    {
      'text': "出発地を選択",
      'icon': const Icon(color: Colors.white, Icons.location_on)
    },
    {
      'text': "目的地を選択",
      'icon': const Icon(color: Color.fromRGBO(199, 158, 191, 1), Icons.flight)
    },
    {
      'text': "日付を選択",
      'icon': const Icon(
          color: Color.fromRGBO(199, 158, 191, 1), Icons.calendar_month)
    }
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(20),
            shape: const StadiumBorder(),
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: const Text(style: TextStyle(color: Colors.white), "飛行機"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        TextButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(20),
            // shape: const StadiumBorder(),
            // side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: Text(style: TextStyle(color: Colors.white), "宿泊"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        TextButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(20),
            // shape: const StadiumBorder(),
            // side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: Text(style: TextStyle(color: Colors.white), "食事"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
      ],
      flexibleSpace: Scaffold(
          body: Column(
        children: <Widget>[
          Flexible(
              child: Container(
                  color: Color.fromRGBO(93, 16, 73, 1),
                  padding: const EdgeInsets.only(top: 110),
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: textType
                        .map(
                          (Map<String, dynamic> e) => Container(
                            padding: const EdgeInsets.all(5),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(114, 13, 93, 1),
                                filled: true,
                                hintStyle: (TextStyle(
                                    color: Color.fromRGBO(199, 158, 191, 1))),
                                contentPadding: const EdgeInsets.all(10),
                                prefixIcon: e['icon'],
                                hintText: e['text'],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ))),
        ],
      )),
    );
  }
}
