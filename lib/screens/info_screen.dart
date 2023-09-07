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
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final TemTem temtem = args.temtem;

    List<Widget> generateTypes() {
      List<Widget> types = [];
      for (var i = 0; i < temtem.types.length; i++) {
        types.add(Types(temtem.types[i]));
      }
      return types;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          temtem.name,
          style: TextStyle(
            color: ColorsUtils.textColorOverType(type: temtem.types[0]),
          ),
        ),
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
                print(temtem.wikiUrl);
                Uri uri = Uri.parse(temtem.wikiUrl);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.inAppWebView);
                }
              },
              icon: const Icon(Icons.open_in_new))
        ],
      ),
      body: Center(
        child: Container(
          color: ColorsUtils.typeColor(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: ColorsUtils.typeColor(type: temtem.types[0]),
                ),
                child: Column(
                  children: [
                    CachedNetworkImage(
                        width: 150,
                        imageUrl: luma
                            ? temtem.wikiRenderAnimatedLumaUrl
                            : temtem.wikiRenderAnimatedUrl,
                        placeholder: (context, url) =>
                            CircularProgressIndicator()),
                    Container(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        temtem.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: ColorsUtils.textColorOverType(
                              type: temtem.types[0]),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [...generateTypes()],
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        temtem.traits.length > 1
                            ? '${temtem.traits[0]} | ${temtem.traits[1]}'
                            : temtem.traits[0],
                        style: TextStyle(
                          color: ColorsUtils.textColorOverType(
                              type: temtem.types[0]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              WeaknessesList(temtem.types),
              TemTemStats(temtem.stats)
            ],
          ),
        ),
      ),
    );
  }
}
