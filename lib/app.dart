import 'package:flutter/material.dart';
import 'package:temtem_dex/models/temtem.dart';
import 'helpers/state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:temtem_dex/widgets/types_list.dart';
import 'package:temtem_dex/widgets/weaknesses_list.dart';

class TemtemDex extends StatelessWidget {
  const TemtemDex({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TemTem Dex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'TemTem Dex'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState(title);
}

class _HomePageState extends State<HomePage> {
  String title;
  _HomePageState(this.title);
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  bool _collapsed = true;
  List<TemTem> temtemsFiltered = temtems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: const Color.fromRGBO(255, 255, 255, 1),
          backgroundColor: const Color.fromRGBO(73, 50, 78, 1),
          title: _isSearching
              ? TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    List<TemTem> filtered = [];
                    for (var e in temtems) {
                      if (e.name!.toLowerCase().contains(value.toLowerCase()))
                        filtered.add(e);
                    }
                    setState(() {
                      if (value.isEmpty) {
                        this.title = widget.title;
                      } else {
                        this.title = value;
                      }
                      temtemsFiltered = filtered;
                    });
                  },
                  onEditingComplete: () {
                    setState(() {
                      _isSearching = false;
                    });
                  })
              : Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
          actions: [
            if (!_isSearching)
              IconButton(
                onPressed: () {
                  setState(() {
                    _isSearching = !_isSearching;
                  });
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            if (!_isSearching)
              IconButton(
                onPressed: () {
                  setState(() {
                    _collapsed = !_collapsed;
                    for (var temtem in temtems) {
                      temtem.isExpanded = !_collapsed;
                    }
                  });
                },
                icon: Icon(
                  !_collapsed ? Icons.unfold_less : Icons.unfold_more,
                  color: Colors.white,
                ),
              )
          ],
        ),
        body: Container(
          color: const Color.fromRGBO(73, 50, 78, 1),
          child: ListView.builder(
              itemCount: temtemsFiltered.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: CircleAvatar(
                                    backgroundImage: CachedNetworkImageProvider(
                                        temtemsFiltered[index]
                                                .portraitWikiUrl ??
                                            ''),
                                    radius: 30),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      '#${temtemsFiltered[index].number.toString().padLeft(3, '0')}'),
                                  Text(temtemsFiltered[index].name ?? ''),
                                  TypesList(temtemsFiltered[index].types ?? []),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      temtemsFiltered[index].isExpanded =
                                          !temtemsFiltered[index].isExpanded;
                                    });
                                  },
                                  icon: Icon(temtemsFiltered[index].isExpanded
                                      ? Icons.expand_less
                                      : Icons.expand_more))
                            ],
                          ),
                        ),
                        if (temtemsFiltered[index].isExpanded)
                          WeaknessesList(temtemsFiltered[index].types ?? [])
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
