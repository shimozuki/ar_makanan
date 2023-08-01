import 'package:flutter/material.dart';
// import 'package:quiz_makanan/screens/ar_jagung.dart';
// import 'package:quiz_makanan/screens/ar_kacang.dart';
// import 'package:quiz_makanan/screens/ar_ubi.dart';
import 'package:url_launcher/url_launcher.dart';

class ArScreen extends StatefulWidget {
  @override
  _ArScreenState createState() => _ArScreenState();
}

class _ArScreenState extends State<ArScreen> {
  void _launchURL() async {
    const url = 'https://restapiviewme.000webhostapp.com/jagung/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchKacang() async {
    const url = 'https://restapiviewme.000webhostapp.com/kacang/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchUbi() async {
    const url = 'https://restapiviewme.000webhostapp.com/ubi/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      // appBar: AppBar(
      //   title: Text("Flutter BackdropFilter Widget Demo"),
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      // ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: _launchURL,
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.cyan[100], // Equivalent to the 'color' parameter
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        20))), // Equivalent to the 'shape' parameter
                padding:
                    EdgeInsets.all(13), // Equivalent to the 'padding' parameter
              ),
              child: Text(
                'Jagung',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: _launchUbi,
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.cyan[100], // Equivalent to the 'color' parameter
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        20))), // Equivalent to the 'shape' parameter
                padding:
                    EdgeInsets.all(13), // Equivalent to the 'padding' parameter
              ),
              child: Text(
                'Ubi',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: _launchKacang,
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.cyan[100], // Equivalent to the 'color' parameter
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        20))), // Equivalent to the 'shape' parameter
                padding:
                    EdgeInsets.all(13), // Equivalent to the 'padding' parameter
              ),
              child: Text(
                'Kacang',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      )), //center
    );
  }
}
