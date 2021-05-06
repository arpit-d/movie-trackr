import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routerDelegate = BeamerRouterDelegate(
      locationBuilder: SimpleLocationBuilder(
        routes: {
          '/': (context) => MyHomePage(),
        },
      ),
    );
    return MaterialApp.router(
      routeInformationParser: BeamerRouteInformationParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Movie Trackr',
      theme: ThemeData(
        primaryColor: Color(0xFF3A3238),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF04030F),
      appBar: AppBar(
        title: Text(
          'Movie Trackr',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
