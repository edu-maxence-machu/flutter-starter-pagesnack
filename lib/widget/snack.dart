import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
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
    return Center(
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
            ElevatedButton(
                onPressed: () {
                  callSnack(context);
                },
                child: Text('Press me')
                )
          ],
        ),
    );
  }
}
