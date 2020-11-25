import 'package:flutter/material.dart';

class SquareAnimation extends StatefulWidget {
  @override
  _SquareAnimationState createState() => _SquareAnimationState();
}

class _SquareAnimationState extends State<SquareAnimation> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> rotation;
  Animation<double> opacity;
  Animation<double> opacityOut;
  Animation<double> move;
  Animation<double> expansion;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this, //with SingleTickerProviderStateMixin定義。
      duration: Duration(seconds: 2),
    );
    // rotation = Tween(begin: 0.0,end: 2.0 * Math.pi).animate(_controller); //回転。Math.piは正位置に戻る。
    rotation = Tween(begin: 0.0,end: 2.0).animate(
      CurvedAnimation(parent: _controller,curve: Curves.easeInOutCubic) //http://haiyang.me/easing/Easings.html参照。
    );
    opacity = Tween(begin: 0.1,end: 1.0,).animate(
      CurvedAnimation(parent: _controller,curve: Interval(0, 0.25, curve: Curves.easeOut)),
    );
    opacityOut = Tween(begin: 0.0,end: 1.0,).animate(
        CurvedAnimation(parent: _controller,curve: Interval(0.75, 1, curve: Curves.easeOut)),
    );
    move = Tween(begin: 0.0,end: 200.0).animate(_controller);//200ピクセル移動。右もしくは下方向。-200で逆移動。
    expansion = Tween(begin: 0.5,end: 2.0).animate(_controller); //元のサイズの2倍。

    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) { //正回転が終わったら、逆回転。
        _controller.reset();//reverse行って帰る。resetで行ってまた最初の位置から。
      // } else if (_controller.status == AnimationStatus.dismissed) { //↑の逆回転が終わったら再度実行。ループ。
      //   _controller.forward();
      }
    });
    _controller.forward(); //出力
    super.initState();
  }

  @override
  void dispose() { //初期化要。
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        return Transform.translate( //移動
          offset: Offset(move.value,0),
          child: Transform.rotate(//回転
            angle: rotation.value,
            child: Opacity(
              opacity: opacity.value - opacityOut.value,
              child: Transform.scale( //サイズ変化。
                scale: expansion.value,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}








