import 'package:cr/features/feature_introduction/introduction.dart';
import 'package:cr/features/feature_introduction/presentation/controllers/introduction_cubit.dart';
import 'package:cr/features/feature_introduction/presentation/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownSection extends StatelessWidget {
  DownSection({super.key, required this.introduction});
  List<Introduction> introduction;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroductionCubit, IntroductionState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _point(context, pageCount: introduction.length),
          NextButton(pageCount: introduction.length),
        ],
      );
    });
  }
}

Widget _point(BuildContext context, {required int pageCount}) {
  double boxWidth = (50 * (pageCount / 3)).w;
  double cuPointWidth = boxWidth / pageCount;
  return SizedBox(
      width: boxWidth,
      height: 10.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            pageCount,
            (index) => index == context.read<IntroductionCubit>().currentPage
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(cuPointWidth).w),
                    width: cuPointWidth,
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10).w),
                    width: 10.w,
                  )),
      ));
}
