import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/title.dart' ;

class MainScroll extends StatelessWidget {
  final items = [
    ListItem('Orange', Color(0xffF08F66)),
    ListItem('Family', Color(0xffF2A38A)),
    ListItem('Subscriptions', Color(0xffF7CDD5)),
    ListItem('Books', Color(0xffFCEBAF)),
    ListItem('Orange', Color(0xffF08F66)),
    ListItem('Family', Color(0xffF2A38A)),
    ListItem('Subscriptions', Color(0xffF7CDD5)),
    ListItem('Books', Color(0xffFCEBAF)),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // SliverAppBar(
        //   floating: true, //上へスクロールをした瞬間にAPPバーを表示させる。
        //   backgroundColor: Colors.red,
        //   title: Text('hello'),
        // ),
        SliverPersistentHeader(
            floating: true, //上へスクロールをした瞬間にchildを表示。
            delegate: SliverCustomHeaderDelegate(
              minheigth: 200, //Titleがスクロールされるまでの高さ
              maxheight: 250, //SliverListのTitleとの間隔、高さ。
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.greenAccent,
                child: Titles(),
              ),
            )),
        SliverList(
          delegate: SliverChildListDelegate([
            ...items,
            SizedBox(
              height: 100,
            )
          ]),
        )
      ],
    );
  }
}

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minheigth;
  final double maxheight;
  final Widget child;
  SliverCustomHeaderDelegate({
    this.maxheight,
    this.minheigth,
    this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => maxheight;

  @override
  double get minExtent => minheigth;

  @override
  bool shouldRebuild(SliverCustomHeaderDelegate oldDelegate) {
    return maxheight != oldDelegate.maxheight ||
        minheigth != oldDelegate.minheigth ||
        child != oldDelegate.child;
  }
}
class ListItem extends StatelessWidget {
  ListItem(this.title, this.color);

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      height: 130,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}