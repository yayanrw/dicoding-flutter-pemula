import 'dart:math';
import 'package:flutter/material.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:litelearn/widget/custom_clipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform.rotate(
          angle: -pi / 3,
          child: ClipPath(
            clipper: ClipPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                  color: ColorsTheme.primary1
              ),
            ),
          ),
        )
    );
  }
}