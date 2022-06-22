import 'package:flutter/material.dart';

class PageAlert extends StatelessWidget {
  const PageAlert({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Center(
        child: ElevatedButton(
          child: Text('Appuyez'),
          onPressed: () {
            // Call alert
            alerte(context);
          },
        ),
      ),
    );
  }

  Future<void> alerte(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextDialog) {
          return AlertDialog(
            title: Text(
              "Ceci 'est une alerte",
              textScaleFactor: 1.5,
            ),
            content: Text("Nous avons un problème"),
            contentPadding: EdgeInsets.all(5.0),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    print('abort');
                    Navigator.pop(contextDialog);
                  },
                  child: Text(
                    'Annuler',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    print('Continuer');
                    Navigator.pop(contextDialog); // ferme la popup
                  },
                  child: Text(
                    'Continuer',
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          );
        });
  }
}
