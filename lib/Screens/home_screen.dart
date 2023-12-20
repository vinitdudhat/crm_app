
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // late final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body:

      // Column(
      //   children: [
      //
      //   ],
      // )
      WebView(
        initialUrl:"http://accounting-001-site5.ctempurl.com/",
        javascriptMode: JavascriptMode.unrestricted,

        // gestureNavigationEnabled: true,
        // backgroundColor: Colors.white,
        // navigationDelegate: (request) async {
        //   if (request.url.startsWith('tel:')) {
        //     // await launch(request.url);
        //     print("Hello");
        //     return NavigationDecision.prevent; // Prevent WebView navigation
        //   }
        //   if (request.url.startsWith('mailto:')) {
        //     // await launch(request.url);
        //     print("Hello");
        //     return NavigationDecision.prevent; // Prevent WebView navigation
        //   }
        //   return NavigationDecision.navigate;
        // },
      )
    );
  }
}
