import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

class Webviewpage extends StatefulWidget {
  const Webviewpage({super.key});

  @override
  State<Webviewpage> createState() => _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: WebView(
        initialUrl: 'https://restapiviewme.000webhostapp.com/jagung/',
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
          if (request.url
              .startsWith('https://restapiviewme.000webhostapp.com/jagung/')) {
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
      ),
    );
  }
}
