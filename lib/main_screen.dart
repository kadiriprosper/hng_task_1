import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.deepPurple,
              // Colors.green,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // width: MediaQuery.of(context).size.shortestSide * 0.8,
                // height: MediaQuery.of(context).size.longestSide * 0.4,
                width: 200,
                height: 200,
                constraints: const BoxConstraints(
                  maxHeight: 500,
                  maxWidth: 500,
                  minWidth: 300,
                  minHeight: 300,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/picture.jpeg'),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.low,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Text(
                    'Kadiri Ehijie',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(MdiIcons.slack),
                      const SizedBox(width: 5),
                      Text(
                        'ehi-j',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Mobile Developer',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () async {
                      String status = 'Loading Url..';
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(status),
                        ),
                      );
                      final uri = Uri.parse('https://github.com/kadiriprosper');
                      await launchUrl(uri, mode: LaunchMode.inAppWebView);
                    },
                    color: Colors.black,
                    height: 60,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Open Github'),
                        const SizedBox(width: 10),
                        Icon(MdiIcons.github),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
