import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://snoopy-thon.tistory.com/category/Flutter');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..loadRequest(homeUrl)
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 184, 252),
        title: const Text(
          'Yujin\'s Tech blog',
          style: TextStyle(
            color: Color.fromARGB(255, 48, 40, 9),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(Uri.parse(
                  'https://snoopy-thon.tistory.com/category/Flutter'));
            },
            icon: const Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
