import 'dart:async';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

class CameraWebView extends StatefulWidget {
  @override
  _CameraWebViewState createState() => _CameraWebViewState();
}

class _CameraWebViewState extends State<CameraWebView> {
  @override
  void initState() {
    super.initState();
    _requestCameraPermission();
  }

  Future<void> _requestCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      // Jika izin kamera belum diberikan, maka periksa URL yang dimuat dalam WebView.
      final webViewController = _controller.future;
      final currentUrl = await (await webViewController).currentUrl();

      if (currentUrl == "https://restapiviewme.000webhostapp.com/jagung/") {
        // Jika URL sesuai dengan link yang diizinkan, berikan izin kamera secara otomatis.
        await Permission.camera.request();
      }
    }
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://restapiviewme.000webhostapp.com/jagung/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          navigationDelegate: (NavigationRequest request) {
            if (request.url.startsWith(
                'https://restapiviewme.000webhostapp.com/jagung/')) {
              print('Allowing navigation to $request');
              return NavigationDecision.navigate;
            }
            print('Blocking navigation to $request');
            return NavigationDecision.prevent;
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          gestureNavigationEnabled: true,
          geolocationEnabled: true, // Support geolocation or not
        ),
      ),
    );
  }
}
