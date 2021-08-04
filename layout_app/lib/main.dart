import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Container(
    //     decoration: const BoxDecoration(color: Colors.white),
    //     child: const Center(
    //       child: Text(
    //         'Hello World',
    //         textDirection: TextDirection.ltr,
    //         style: TextStyle(
    //           fontSize: 32,
    //           color: Colors.black87,
    //         ),
    //       ),
    //     ));
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Layout Demo',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _FontTheme = const TextStyle(fontSize: 20.0);

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final titleText =
        Text('Strawverry Pavlova', style: TextStyle(fontSize: 35));
    final subTitle = Text(
        'Strawverry Pavlova Strawverry Pavlova Strawverry Pavlova Strawverry Pavlova',
        style: TextStyle(fontSize: 20));

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.amber[500]),
        Icon(Icons.star, color: Colors.amber[500]),
        Icon(Icons.star, color: Colors.amber[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black)
      ],
    );

    final ratings = Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            stars,
            const Text(
              '170 Revies',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            )
          ],
        ));

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 15,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  const Text('PREP:'),
                  const Text('25 min'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.green[500]),
                  const Text('COOK:'),
                  const Text('1 hr'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  const Text('FEEDS:'),
                  const Text('4-6'),
                ],
              )
            ],
          ),
        ));

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    final mainImage = Image.asset('assets/images/lake.jpg');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 600,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text('Hello World', style: _FontTheme),
        //     Image.asset(
        //       'assets/images/lake.jpg',
        //       fit: BoxFit.cover,
        //     ),
        //     Row(
        //       children: <Widget>[
        //         Icon(
        //           Icons.star,
        //           color: Colors.amber[500],
        //         ),
        //         Icon(
        //           Icons.star,
        //           color: Colors.amber[500],
        //         ),
        //         Icon(
        //           Icons.star,
        //           color: Colors.amber[500],
        //         ),
        //         Icon(
        //           Icons.star,
        //           color: Colors.black,
        //         ),
        //         Icon(
        //           Icons.star,
        //           color: Colors.black,
        //         ),
        //       ],
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       mainAxisSize: MainAxisSize.min,
        //     ),
        //     Row(children: [
        //       Expanded(
        //         child: Image.asset('assets/images/lake.jpg'),
        //       ),
        //       Expanded(
        //         flex: 2,
        //         child: Image.asset('assets/images/lake.jpg'),
        //       ),
        //       Expanded(
        //         child: Image.asset('assets/images/lake.jpg'),
        //       ),
        //     ], mainAxisAlignment: MainAxisAlignment.center)
        //   ],
        // ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
