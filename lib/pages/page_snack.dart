import 'package:flutter/material.dart';

class PageSnack extends StatefulWidget {
  const PageSnack({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PageSnack> createState() => _PagesSnackState();
}

class _PagesSnackState extends State<PageSnack> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void callSnack(BuildContext context) {
    SnackBar snackbar = SnackBar(
      content: Text('Je suis la snackbar'),
      duration: Duration(seconds: 10),
      backgroundColor: Colors.black38,
      action: SnackBarAction(
        label: 'Clic',
        textColor: Colors.white,
        onPressed: () {
          print('Clic snackbar');
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
