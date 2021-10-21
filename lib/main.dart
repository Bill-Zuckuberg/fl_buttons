import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Button",
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const ButtonControll(),
    );
  }
}

class ButtonControll extends StatelessWidget {
  const ButtonControll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showButtonTapped() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "Button Tapped",
        textAlign: TextAlign.center,
      )));
    }

    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                const Text("ButtonBar"),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () => _showButtonTapped(),
                        child: const Text("ElevatedButton")),
                    const ElevatedButton(
                        onPressed: null, child: Text("Disable-ElevatedButton"))
                  ],
                ),
                const Divider(),
                const Text("Text Button"),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Button Tapped",
                              toastLength: Toast.LENGTH_LONG,
                              timeInSecForIosWeb: 5);
                        },
                        child: const Text("TextButton")),
                    const TextButton(
                        onPressed: null, child: Text("Disable-TextButton"))
                  ],
                ),
                const Divider(),
                const Text("OutlinedButton"),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    OutlinedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Button Tapped", timeInSecForIosWeb: 5);
                        },
                        child: const Text("OutlinedButton")),
                    const OutlinedButton(
                        onPressed: null, child: Text("Disable-OutlinedButton"))
                  ],
                ),
                const Divider(),
                const Text("Icon Button"),
                Center(
                    child: IconButton(
                  onPressed: () => _showButtonTapped(),
                  icon: const Icon(Icons.call),
                  tooltip: "Place a phone call",
                  iconSize: 32.0,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
