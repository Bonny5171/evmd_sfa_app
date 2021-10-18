import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: "FLUTTER COM PARÇA!",
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('contador: $count'),
          onTap: () {
            setState(() {
              count++;
            });
            print('clicado: $count');
          },
        ),
      ),
    );
  }
}
