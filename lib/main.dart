import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Radio Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum GroupValue { A, B }

class _MyHomePageState extends State<MyHomePage> {
  GroupValue _groupValue = GroupValue.A;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<GroupValue>(
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value!;
                        if (kDebugMode) {
                          print(_groupValue);
                        }
                      });
                    },
                    groupValue: _groupValue,
                    value: GroupValue.A,
                  ),
                  const Text("A"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<GroupValue>(
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value!;
                        if (kDebugMode) {
                          print(_groupValue);
                        }
                      });
                    },
                    groupValue: _groupValue,
                    value: GroupValue.B,
                  ),
                  const Text("B"),
                ],
              ),
            ],
          ),
        ));
  }
}
