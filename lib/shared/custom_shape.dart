import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
// size: Size(WIDTH, (WIDTH*1.2357723577235773).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomClipper<Path> {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(size.width,size.height*0.1052632);
path_0.cubicTo(size.width,size.height*0.04712796,size.width*0.9417642,0,size.width*0.8699187,0);
path_0.lineTo(size.width*0.1309545,0);
path_0.cubicTo(size.width*0.04731488,0,size.width*-0.01458919,size.height*0.06295289,size.width*0.004196252,size.height*0.1289053);
path_0.lineTo(size.width*0.2290642,size.height*0.9183816);
path_0.cubicTo(size.width*0.2426724,size.height*0.9661513,size.width*0.2952366,size.height,size.width*0.3558228,size.height);
path_0.lineTo(size.width*0.8699187,size.height);
path_0.cubicTo(size.width*0.9417642,size.height,size.width,size.height*0.9528750,size.width,size.height*0.8947368);
path_0.lineTo(size.width,size.height*0.1052632);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffD9D9D9).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}

  @override
  ui.Path getClip(ui.Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width,size.height*0.1052632);
    path_0.cubicTo(size.width,size.height*0.04712796,size.width*0.9417642,0,size.width*0.8699187,0);
    path_0.lineTo(size.width*0.1309545,0);
    path_0.cubicTo(size.width*0.04731488,0,size.width*-0.01458919,size.height*0.06295289,size.width*0.004196252,size.height*0.1289053);
    path_0.lineTo(size.width*0.2290642,size.height*0.9183816);
    path_0.cubicTo(size.width*0.2426724,size.height*0.9661513,size.width*0.2952366,size.height,size.width*0.3558228,size.height);
    path_0.lineTo(size.width*0.8699187,size.height);
    path_0.cubicTo(size.width*0.9417642,size.height,size.width,size.height*0.9528750,size.width,size.height*0.8947368);
    path_0.lineTo(size.width,size.height*0.1052632);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffD9D9D9).withOpacity(1.0);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<ui.Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}