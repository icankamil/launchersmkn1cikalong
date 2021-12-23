import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            Image.asset(
              'aset/logogram-04.png',
              scale: 9,
            ),
            'Website Utama',
            'https://smkn1cikalongkulon.sch.id/'),
        _buildButtonColumn(
            Image.asset(
              'aset/logogram-05.png',
              scale: 9,
            ),
            'eLmu',
            'https://belajar.smkn1cikalongkulon.sch.id/login/'),
        /* _buildButtonColumn(
            Image.asset(
              'aset/logogram-06.png',
              scale: 9,
            ),
            'eLib',
            "http://lib.sman12bandung.sch.id/"),*/
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMKN 1 Cikalong Kulon',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('SMKN 1 Cikalong Kulon'),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("aset/bgmenu.jpg"), fit: BoxFit.cover)),
          child: buttonSection,
        ),
        persistentFooterButtons: [
          Container(
            width: 900,
            child: Text(
              'Powered by Urban Access',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _buildButtonColumn(Image icon, String label, String url) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            launch(url);
          },
          child: icon,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
