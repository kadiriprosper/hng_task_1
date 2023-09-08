import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageScreen extends StatefulWidget {
  const WebPageScreen({super.key});

  @override
  State<WebPageScreen> createState() => _WebPageScreenState();
}

class _WebPageScreenState extends State<WebPageScreen> {
  WebViewController controller = WebViewController();
  bool loadingDone = false;

  @override
  void initState() {
    controller
        .loadRequest(Uri.parse('https://github.com/kadiriprosper'))
        .whenComplete(() {
      setState(() {
        loadingDone = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github'),
      ),
      body: loadingDone
          ? WebViewWidget(controller: controller)
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
