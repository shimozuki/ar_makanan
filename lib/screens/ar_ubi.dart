import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webview_pro/platform_interface.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

class Arubi extends StatefulWidget {
  const Arubi({super.key});

  @override
  State<Arubi> createState() => _ArubiState();
}

class _ArubiState extends State<Arubi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'https://restapiviewme.000webhostapp.com/ubi/',
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            print('blocking navigation to $request}');
            return NavigationDecision.prevent;
          }
          print('allowing navigation to $request');
          return NavigationDecision.navigate;
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
        },
        gestureNavigationEnabled: true,
        geolocationEnabled: false, //support geolocation or not
        javascriptChannels: <JavascriptChannel>[
          JavascriptChannel(
            name: 'cameraChannel',
            onMessageReceived: (JavascriptMessage message) {
              // Handle messages from the AR.js camera if needed
            },
          ),
        ].toSet(),
      ),
    );
  }
}
