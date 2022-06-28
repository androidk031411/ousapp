import 'package:flutter/material.dart';
import 'package:ous/NavBar.dart';
import 'package:ous/setting/music.dart';
import 'package:ous/Nav/userpolicie.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:ous/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:in_app_review/in_app_review.dart';


class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('アプリの設定'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
            },
          ),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: Text('基本的な設定'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('アプリの言語'),
                  value: Text('日本語'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.notifications_none),
                  title: Text('通知設定'),
                ),
              ],
            ),
            SettingsSection(
              title: Text('その他'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.music_note),
                  title: Text('校歌'),
  onPressed: (context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => Music(),
    ));
  }
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.description),
                  title: Text('利用規約について'),
                  onPressed: (context) {
                    launch('https://tan-q-bot-unofficial.com/terms_of_service/');
                  },
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.reply),
                  title: Text('記事の掲載元'),
                  onPressed: (context) {
                    launch('https://www.ous.ac.jp/topics/');
                  },
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.email),
                  title: Text('お問合わせ'),
                  onPressed: (context) {
                    launch('https://twitter.com/notifications');
                  },
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.rate_review),
                  title: Text('このアプリを評価する'),
                  onPressed: (BuildContext context) async {
                    final InAppReview inAppReview = InAppReview.instance;
                    if (await inAppReview.isAvailable()) {
                      inAppReview.requestReview();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      );
}
