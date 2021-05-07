import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'business_logic/view_models/movies_screen_view_model.dart';
import 'services/locator.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final routerDelegate = BeamerRouterDelegate(
    locationBuilder: SimpleLocationBuilder(
      routes: {
        '/': (context) => MyHomePage(),
        '/new_page': (context) => NewPage(),
      },
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerRouteInformationParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Movie Trackr',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          brightness: Brightness.dark,
        ),
        primaryColor: const Color(0xFF555b6e),
        textTheme: GoogleFonts.openSansTextTheme(),
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
  MoviesScreenViewModel model = serviceLocator<MoviesScreenViewModel>();

  @override
  void initState() {
    model.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Movie Trackr',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: MaterialButton(
            child: Text('a'),
            onPressed: () {
              if (!context.canBeamBack) {
                print('ee');
              }
            },
          ),
        ),
      ),
    );
  }
}
