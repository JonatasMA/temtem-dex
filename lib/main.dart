import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:temtem_dex/models/TemTem.dart';
import 'package:temtem_dex/widgets/types.dart';
import 'http/request.dart';
import 'helpers/state.dart';
import 'package:cached_network_image/cached_network_image.dart';

Future main() async {
  List<dynamic> jsonTemtem = await RequestTemtem.fetchTemtem();
  jsonTemtem.forEach((temtem) => temtems.add(TemTem.fromJson(temtem)));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  _MyHomePageState();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: const Color.fromRGBO(255, 255, 255, 1),
          backgroundColor: const Color.fromRGBO(73, 50, 78, 1),
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: const Color.fromRGBO(73, 50, 78, 1),
          child: ListView.builder(
            itemCount: temtems.length,
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: InkResponse(
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: CachedNetworkImageProvider(
                              temtems[index].portraitWikiUrl ?? ''),
                          radius: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('# ${temtems[index].number}'),
                          Text(temtems[index].name ?? '')
                        ],
                      ),
                      CardList(temtems[index].types ?? [])
                    ],
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) =>
                  //           DetailPage(this.pokemons.pokemons[index])));
                  // },
                ),
              );
            },
          ),
        ));
  }
}
