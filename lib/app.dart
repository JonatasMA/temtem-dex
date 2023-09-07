import 'package:flutter/material.dart';
import 'package:temtem_dex/models/temtem.dart';
import 'package:temtem_dex/screens/info_screen.dart';
import 'package:temtem_dex/utils/colors_utils.dart';
import 'package:temtem_dex/widgets/item_card.dart';
import 'helpers/state.dart';

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
        routes: {
          InfoScreen.routeName: (context) => const InfoScreen(),
        });
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
        backgroundColor: ColorsUtils.typeColor(),
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
                    if (e.name.toLowerCase().contains(value.toLowerCase())) {
                      filtered.add(e);
                    }
                  }
                  setState(() {
                    if (value.isEmpty) {
                      title = widget.title;
                    } else {
                      title = value;
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
        color: ColorsUtils.typeColor(),
        child: ListView.builder(
          itemCount: temtemsFiltered.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemCard(temtem: temtemsFiltered[index]);
          },
        ),
      ),
    );
  }
}
