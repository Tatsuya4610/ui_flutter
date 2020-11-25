import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_ui/widgets/slideshow.dart';


class SlideShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pinkAccent,
      body: SlideShow(
        pointsUp: true,
        slides: [
          SvgPicture.asset('assets/svg/slide-1.svg'),
          SvgPicture.asset('assets/svg/slide-2.svg'),
          SvgPicture.asset('assets/svg/slide-3.svg'),
          SvgPicture.asset('assets/svg/slide-4.svg'),
          SvgPicture.asset('assets/svg/slide-5.svg'),
        ],
      ),
    );
  }
}

