import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webview_pro/platform_interface.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

class Arkacang extends StatefulWidget {
  const Arkacang({super.key});

  @override
  State<Arkacang> createState() => _ArkacangState();
}

class _ArkacangState extends State<Arkacang> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: WebView(
        initialUrl: 'https://restapiviewme.000webhostapp.com/kacang/',
        javascriptMode: JavascriptMode.unrestricted,
        // onWebViewCreated: (WebViewController webViewController) {
        //   _controller.complete(webViewController);
        // },
        // onProgress: (int progress) {
        //   print("WebView is loading (progress : $progress%)");
        // },
        // javascriptChannels: <JavascriptChannel>{
        //   _toasterJavascriptChannel(context),
        // },
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
        geolocationEnabled: true, //support geolocation or not
      ),
    );
  }
}
