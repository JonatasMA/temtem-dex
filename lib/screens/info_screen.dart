import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temtem_dex/models/screen_arguments.dart';
import 'package:temtem_dex/models/temtem.dart';
import 'package:temtem_dex/utils/colors_utils.dart';
import 'package:temtem_dex/widgets/temtem_stats.dart';
import 'package:temtem_dex/widgets/types.dart';
import 'package:temtem_dex/widgets/weaknesses_list.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  static const routeName = '/info';

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  _InfoScreenState();
  bool luma = false;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final TemTem temtem = args.temtem;
    bool stretch = true;
    List<Widget> generateTypes() {
      List<Widget> types = [];
      for (var i = 0; i < temtem.types.length; i++) {
        types.add(Types(temtem.types[i]));
      }
      return types;
    }

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar.large(
              centerTitle: false,
              backgroundColor: ColorsUtils.typeColor(type: temtem.types[0]),
              iconTheme: IconThemeData(
                color: ColorsUtils.textColorOverType(type: temtem.types[0]),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        luma = !luma;
                      });
                    },
                    icon: Icon(luma ? Icons.light_mode : Icons.dark_mode)),
                IconButton(
                    onPressed: () async {
                      Uri uri = Uri.parse(temtem.wikiUrl);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri, mode: LaunchMode.inAppWebView);
                      }
                    },
                    icon: const Icon(Icons.open_in_new))
              ],
              expandedHeight: 400.0,
              floating: true,
              pinned: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  temtem.name,
                  style: TextStyle(
                    color: ColorsUtils.textColorOverType(type: temtem.types[0]),
                  ),
                ),
                background: Container(
                  padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
                  decoration: BoxDecoration(
                    color: ColorsUtils.typeColor(type: temtem.types[0]),
                  ),
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        height: 200,
                        fit: BoxFit.fitHeight,
                        imageUrl: luma
                            ? temtem.wikiRenderAnimatedLumaUrl
                            : temtem.wikiRenderAnimatedUrl,
                        progressIndicatorBuilder: (context, url, progress) =>
                            Center(
                          heightFactor: 0.5,
                          widthFactor: 0.5,
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(
                              value: progress.progress,
                              color: ColorsUtils.textColorOverType(
                                  type: temtem.types[0]),
                              strokeWidth: 5.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [...generateTypes()],
                        ),
                      ),
                      Text(
                        temtem.traits.length > 1
                            ? '${temtem.traits[0]} | ${temtem.traits[1]}'
                            : temtem.traits[0],
                        style: TextStyle(
                          color: ColorsUtils.textColorOverType(
                              type: temtem.types[0]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Container(
            color: ColorsUtils.typeColor(),
            child: Column(
              children: [
                WeaknessesList(temtem.types),
                TemTemStats(temtem.stats)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
