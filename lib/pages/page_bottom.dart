import 'package:flutter/material.dart';
import './page_alert.dart';
import './page_snack.dart';

class PageBottom extends StatelessWidget {
  const PageBottom({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "Alert"),
          BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Snack"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PageAlert(
                  title: "Alert",
                );
              }));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PageSnack(title: "Snack");
              }));
              break;
          }
        },
      ),
    );
    ;
  }
}
