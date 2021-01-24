import 'package:flutter/material.dart';

// class HeadersDiagonal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) { // 傾き向ける
//     return Transform.rotate(
//       angle: -0.09,
//       child: Container(
//         height: 300,
//         width: double.infinity,
//         color: Colors.blue,
//       ),
//     );
//   }
// }


class HeadersDiagonal extends StatelessWidget { //X,Y座標を使ったペイント。
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeadersDiagonalPainter(),
      ),
    );
  }
}
// class _HeadersDiagonalPainter extends CustomPainter { // 直線のペイント
//   @override
//   void paint(Canvas canvas, Size size) {
//     final lapiz = Paint();
//     lapiz.color = Colors.blue;
//     lapiz.style = PaintingStyle.stroke; //PaintingStyle.strokeは棒線。 strokeで確認すると分かりやすい。
//     lapiz.strokeWidth = 10;
//     final path = Path();
//     // path.moveTo(size.width, size.height * 0.5); //X,Y座標。横0位置から縦半分の位置。
//     path.lineTo(0, size.height * 0.2);//ライン着地地点。
//     path.lineTo(size.width * 0.5, size.height * 0.3); //一本一本書いていくイメージ
//     path.lineTo(size.width, size.height * 0.2);//
//     path.lineTo(size.width, 0);
//     canvas.drawPath(path, lapiz); //出力表示。
//   }
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true; //trueでオッケー。
//   }
// }

class _HeadersDiagonalPainter extends CustomPainter { // 曲線のペイントとグラデーション
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = Rect.fromCircle(
      center: Offset(160.0,100.0), //色合いの始まり位置XY Yはbeginとendがなければ特に指定なし。
      radius: 180, //色の幅
    );
    final Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA),
      ],
      stops: [
        0.4,
        0.7,
        1.0
      ]
    );

    final lapiz = Paint()..shader = gradient.createShader(rect); //グラデーション追加。
    // final lapiz = Paint(); //グラデーションなしの場合。
    // lapiz.color = Colors.blue;
    lapiz.style = PaintingStyle.fill; //PaintingStyle.strokeは棒線。 strokeで確認すると分かりやすい。
    lapiz.strokeWidth = 10;
    final path = Path();
    path.lineTo(0, size.height * 0.25);//ライン着地地点。
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3, size.width * 0.5, size.height * 0.25); //曲線。曲がり始めの位置と高さを追加
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.2, size.width, size.height * 0.25); //もう右半分
    path.lineTo(size.width, size.height * 0);
    canvas.drawPath(path, lapiz); //出力表示。
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; //trueでオッケー。
  }
}