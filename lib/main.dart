import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(App06Main());

class App06Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _MyHomePage());
  }
}

class _MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: buildColumn(context),
      ),
    );
  }
}

Widget buildTitleText() {
  return text2();
}

Widget text2() {
  return Center(
      child: Text(
    "My Pet Shop",
    textScaleFactor: 3.0,
    textAlign: TextAlign.center,
  ));
}

Widget buildRoundedBox(
  String label, {
  double height = 88.0,
}) {
  return Container(
    height: height,
    width: 88.0,
    alignment: Alignment(0.0, 0.0),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(90.0))),
    child: Text(
      label,
      textAlign: TextAlign.center,
    ),
  );
}

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      SizedBox(height: 20.0),
      _buildRowOfFive(),
    ],
  );
}

Widget _buildRowOfThree() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildRoundedBox("Dog"),
      buildRoundedBox("Ape"),
      buildRoundedBox("Dog"),
    ],
  );
}

Widget _buildColumnWithinRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildRoundedBox("Dog"),
      SizedBox(width: 20.0),
      buildRoundedBox("Ape"),
      SizedBox(width: 20.0),
      Column(children: [
        buildRoundedBox(
          "Big ox",
          height: 36.0,
        ),
        buildRoundedBox(
          "Small ox",
          height: 36.0,
        ),
      ])
    ],
  );
}

Widget _buildRowOfFive() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildExpandedBox("Dog"),
      _buildExpandedBox("Ape"),
      _buildExpandedBox("Ape"),
      _buildExpandedBox("Apes"),
      _buildExpandedBox("Dog"),
    ],
  );
}

/*
* A widget that expands a child of a Row, Column, or Flex so that the child fills the
* available space
*
* Using an Expanded widget makes a child of a Row, Column, or Flex expand to fill
* the available space along the main axis. (space divided among the children equal)
* */
Widget _buildExpandedBox(String label, {double height = 88.0}) {
  return Expanded(
    child: buildRoundedBox(
      label,
      height: height,
    ),
  );
}

class App0502 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: MyHomePage2());
  }
}

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing 5-2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class App0501 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  String _pressedOrNot = "You haven't pressed the button.";

  void _changeText() {
    setState(_getNewText);
  }

  void _getNewText() {
    _pressedOrNot = "You've pressed the button.";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          _pressedOrNot,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeText,
      ),
    );
  }
}

class App0401 extends StatelessWidget {
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: CupertinoPageScaffold(
            child: Center(
                child: Text(
      highlight("Hello world!"),
    ))));
  }
}

highlight(String words) {
  return "***" + words + " ***";
}
