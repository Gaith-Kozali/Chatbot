import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/core/constants//app_strings.dart';
import 'package:cr/features/feature_introduction/presentation/controllers/introduction_cubit.dart';
import 'package:cr/features/feature_introduction/presentation/widgets/down_section.dart';
import 'package:cr/features/feature_introduction/presentation/widgets/introduction_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif_view/gif_view.dart';
import 'package:cr/features/feature_introduction/introduction.dart';

List<Introduction> _introduction = [
  Introduction(
      image: AppImagesPath.intro[0],
      title: AppStrings.titleIntro[0],
      description: AppStrings.descIntro[0]),
  Introduction(
      image: AppImagesPath.intro[1],
      title: AppStrings.titleIntro[1],
      description: AppStrings.descIntro[1]),
  Introduction(
      image: AppImagesPath.intro[2],
      title: AppStrings.titleIntro[2],
      description: AppStrings.descIntro[2]),
];

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: introductionAppBar(context),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 600.h,
            child: PageView.builder(
              controller: context.read<IntroductionCubit>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _introduction.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GifView.network(
                      _introduction[index].image,
                      width: 312.w,
                      height: 280.h,
                    ),
                    SvgPicture.asset(
                      AppImagesPath.circle,
                      width: 369.w,
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.h, top: 28.h),
                      child: SizedBox(
                          width: 378.w,
                          child: Text(_introduction[index].title,
                              maxLines: 2,
                              style: Theme.of(context).textTheme.titleLarge)),
                    ),
                    SizedBox(
                      width: 378.w,
                      child: Text(
                        _introduction[index].description,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          DownSection(
            introduction: _introduction,
          )
        ],
      )),
    ));
  }
}
