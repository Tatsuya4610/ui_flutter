import 'package:flutter/material.dart';

class PageAnimateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ページアニメーション'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen1'),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context, _createRoute());
                },
                child: Text('Screen2へ'))
          ],
        ),
      ),
    );
  }

  Route<Object> _createRoute() {
    //PageRouteBuilder()からcommand選択でpageBuilder出せる。エラーも出ない。
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          PageAnimateScreen2(),
      transitionDuration: Duration(seconds: 2), //ページ移行する時間。
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.bounceInOut, //アニメーション指定。
        );
        return SlideTransition(
          position: Tween<Offset>(
                  begin: Offset(
                    0.5, //-0.5にすると左下画面から表示。
                    1.0, //-0.1にすると上から表示。
                  ),
                  end: Offset.zero)
              .animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}

class PageAnimateScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen2'),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, _createRoute1());
              },
              child: Text('Screen3へ'),
            )
          ],
        ),
      ),
    );
  }

  Route<Object> _createRoute1() {
    //PageRouteBuilder()からcommand選択でpageBuilder出せる。エラーも出ない。
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          PageAnimateScreen3(),
      transitionDuration: Duration(seconds: 2), //ページ移行する時間。
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation1 = CurvedAnimation(
          parent: animation,
          curve: Curves.bounceInOut, //アニメーション指定。
        );
        return ScaleTransition(
          // *RotationTransitionは回転のアニメーション。
          scale: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(curvedAnimation1),
          child: child,
        );
      },
    );
  }
}

class PageAnimateScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen3'),
      ),
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen3'),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context, _createRoute2());
                },
                child: Text('Screen4へ'))
          ],
        ),
      ),
    );
  }

  Route<Object> _createRoute2() {
    //PageRouteBuilder()からcommand選択でpageBuilder出せる。エラーも出ない。
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          PageAnimateScreen4(),
      transitionDuration: Duration(seconds: 2), //ページ移行する時間。
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation2 = CurvedAnimation(
          parent: animation,
          curve: Curves.bounceInOut, //アニメーション指定。
        );
        return RotationTransition(
          //2つ掛け持ち可能。
          child: FadeTransition(
            child: child,
            opacity:
                Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation2),
          ),
          turns: Tween<double>(begin: 0.3, end: 1.0).animate(curvedAnimation2),
        ); // *RotationTransitionは回転のアニメーション。
      },
    );
  }
}

class PageAnimateScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen4'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Text('screen4'),
      ),
    );
  }
}
