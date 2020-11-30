import 'package:flutter/material.dart';
import 'package:flutter_ui/model/theme_changer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_ui/routes/routes.dart';
import 'package:provider/provider.dart';

class AnimationMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeColor = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter UI',
          style: TextStyle(
              color: (themeColor.darkTheme) ? Colors.black54 : Colors.white),
        ),
        backgroundColor: themeColor.currentTheme.accentColor,
      ),
      drawer: MainMenu(),
      body: OptionsList(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeChanger>(context);
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 200,
                width: double.infinity,
                child: CircleAvatar(
                  backgroundColor: themeData.currentTheme.accentColor,
                  child: Text(
                    'リスト',
                    style: TextStyle(
                        fontSize: 50,
                        color: (themeData.darkTheme)
                            ? Colors.black54
                            : Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: OptionsList(),
            ),
            ListTile(
              leading: Icon(
                Icons.lightbulb_outline,
                color: Colors.blue,
              ),
              title: Text('ダークモード'),
              trailing: Switch.adaptive(
                  value: themeData.darkTheme,
                  onChanged: (value) {
                    themeData.darkTheme = value;
                  }),
            ),
            SafeArea(
              child: ListTile(
                leading: Icon(
                  Icons.add_to_home_screen,
                  color: Colors.blue,
                ),
                title: Text('カスタムカラー'),
                trailing: Switch.adaptive(
                    value: themeData.customTheme,
                    onChanged: (value) {
                      themeData.customTheme = value;
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeColor = Provider.of<ThemeChanger>(context).currentTheme;
    return ListView.separated(
      physics: BouncingScrollPhysics(), //IOSとAndroid同じように見える。
      separatorBuilder: (context, index) => Divider(),
      itemCount: pageRoutes.length,
      itemBuilder: (context, index) => ListTile(
        leading: FaIcon(
          pageRoutes[index].icon,
          color: themeColor.accentColor,
        ),
        title: Text(pageRoutes[index].title),
        trailing: Icon(
          Icons.chevron_right,
          color: themeColor.accentColor,
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => pageRoutes[index].page),
          );
        },
      ),
    );
  }
}
