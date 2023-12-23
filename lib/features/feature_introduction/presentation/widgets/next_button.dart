import 'dart:math';

import 'package:cr/features/feature_authentication/presentation/screens/login_screen.dart';
import 'package:cr/features/feature_introduction/presentation/controllers/introduction_cubit.dart';
import 'package:cr/features/feature_introduction/presentation/screens/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  NextButton({super.key, required this.pageCount});
  int pageCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(80.r, 80.r),
            painter: Painter(
                rotate: context.read<IntroductionCubit>().currentPage,
                pageCount: pageCount),
          ),
          const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white)
        ],
      ),
      onTap: () {
        context.read<IntroductionCubit>().nextPage();
        if (context.read<IntroductionCubit>().currentPage == pageCount) {
          Navigator.of(context).pushReplacementNamed(LoginScreen.route);
        }
      },
    );
  }
}

class Painter extends CustomPainter {
  Painter({required this.rotate, required this.pageCount});
  int rotate;
  int pageCount;
  @override
  void paint(Canvas canvas, Size size) {
    double sweepAngle = rotate * (pi / (pageCount / 2));
    Offset offset = Offset(size.width / 2, size.height / 2);
    Paint paint = Paint()..color = Colors.black;
    Paint outPaint = Paint()
      ..color = Colors.black38
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    // same offset the out circle to be in center out circle
    canvas.drawCircle(offset, (size.width - 20.r) / 2, paint);

    // draw the out circle
    canvas.drawCircle(offset, size.width / 2, outPaint);

    //draw the foreground Painter of out circle
    canvas.drawArc(Rect.fromCircle(center: offset, radius: size.width / 2),
        (3 * pi) / 2, sweepAngle, false, outPaint..color = Colors.black);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
