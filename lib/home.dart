import 'package:flutter/material.dart';
import 'package:ous/NavBar.dart';
import 'package:ous/bus/bus_school.dart';
import 'package:ous/bus/bus_station.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx/webviewx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
      title: Text('ホーム'),
    ),
      body: Center(
        child: Column(children: [
          Image.asset(
            Theme.of(context).brightness == Brightness.dark
                ? 'assets/images/homedark.jpeg'
                : 'assets/images/home.jpg',
          ),
          Container(
              width: double.infinity,
              child: Text(
                'バス運行情報',
                style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            ButtonBar(
              children: [
                SizedBox(
                  width: 160.w, //横幅
                  height: 50.h, //高さ
                  child: ElevatedButton(
                    child: const Text('岡山駅西口発'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () => launch('https://loc.bus-vision.jp/ryobi/view/approach.html?stopCdFrom=224&stopCdTo=763&addSearchDetail=false&addSearchDetail=false&searchHour=null&searchMinute=null&searchAD=-1&searchVehicleTypeCd=null&searchCorpCd=null&lang=0'),

                  ),
                      ),
                      SizedBox(
                      width: 16.w, //横幅
                      height: 50.h, //高さ
                      child: ElevatedButton(
                      child: const Text('岡山理科大学\正門発'),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                        onPressed: () => launch('https://loc.bus-vision.jp/ryobi/view/approach.html?stopCdFrom=763&stopCdTo=224&addSearchDetail=false&addSearchDetail=false&searchHour=null&searchMinute=null&searchAD=-1&searchVehicleTypeCd=null&searchCorpCd=null&lang=0'),

                      ),
                )
              ],
            ),
            Container(
                width: double.infinity,
                child: Text(
                  'マイログ稼働状況',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ])
        ]),
      )
  );

}
