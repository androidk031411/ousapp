import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ---------
// Webview画面
// ---------
class Bus1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("岡山理科大学発"),
      ),
      body: WebView(
        initialUrl: 'https://loc.bus-vision.jp/ryobi/view/approach.html?stopCdFrom=763&stopCdTo=224&addSearchDetail=false&addSearchDetail=false&searchHour=null&searchMinute=null&searchAD=-1&searchVehicleTypeCd=null&searchCorpCd=null&lang=0',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}