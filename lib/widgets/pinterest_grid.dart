import 'package:flutter/material.dart';
import 'package:flutter_ui/model/menu_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class PinterestGrid extends StatefulWidget {
  @override
  _PinterestGridState createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  final ScrollController _controller = ScrollController();
  double scrollPrevious = 0;

  @override
  void initState() {
    _controller.addListener(() {
      if (_controller.offset > scrollPrevious && _controller.offset > 150) {
        //_controller.offset > 150の理由は一番上までスクロールすると
        // 反動で画面が下がり、ボタンが消えてしまうから
        //スクロールが下へ下がればfalse,
        Provider.of<ToShow>(context, listen: false).toShows = false;
      } else {
        //スクロールが上へ上がればtrue,
        Provider.of<ToShow>(context, listen: false).toShows = true;
      }
      scrollPrevious = _controller.offset;
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      controller: _controller,
      crossAxisCount: 4,
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) => _PinterestItem(index),
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

class _PinterestItem extends StatelessWidget {
  final int index;
  _PinterestItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$index'),
        ),
      ),
    );
  }
}