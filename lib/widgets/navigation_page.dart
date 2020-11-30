import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('通知ページ'),
        ),
        body: null,
        floatingActionButton: BottomFloating(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int number = Provider.of<_NotificationModel>(context).number;
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pinkAccent,
      items: [
        BottomNavigationBarItem(
          label: '骨',
          icon: FaIcon(
            FontAwesomeIcons.bone,
          ),
        ),
        BottomNavigationBarItem(
            label: '通知ベル',
            icon: Stack(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.bell,
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  // child: Icon(Icons.brightness_1,
                  //     size: 8, color: Colors.pinkAccent),
                  child: BounceInDown(//落ちてくるアニメーション
                    from: 10,//落ちてくる高さ
                    animate: (number > 0) ? true : false,
                    child: Container(
                      child: Text('$number',style: TextStyle(color: Colors.white,fontSize: 7),),
                      alignment: Alignment.center,
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        BottomNavigationBarItem(
          label: '犬',
          icon: FaIcon(
            FontAwesomeIcons.dog,
          ),
        ),
      ],
    );
  }
}

class BottomFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Provider.of<_NotificationModel>(context,listen: false).countNumber();
      },
      child: FaIcon(
        FontAwesomeIcons.play,
      ),
    );
  }
}

class _NotificationModel extends ChangeNotifier {
  int _number = 0;

  int get number => _number;


  void countNumber() {
    _number++;
    notifyListeners();
  }
}