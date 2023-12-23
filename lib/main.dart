import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/features/feature_authentication/presentation/screens/information_input_screen.dart';
import 'package:cr/features/feature_authentication/presentation/screens/login_screen.dart';
import 'package:cr/features/feature_authentication/presentation/screens/signup_screen.dart';
import 'package:cr/features/feature_chatbot/data/data/chatbot_remote_data.dart';
import 'package:cr/features/feature_chatbot/data/repositories/repository_imp.dart';
import 'package:cr/features/feature_chatbot/domain/repositories/chatbot_repositories.dart';
import 'package:cr/features/feature_chatbot/domain/use_cases/chatAi_useCase.dart';
import 'package:cr/features/feature_chatbot/presentation/controllers/chatbot_bloc.dart';
import 'package:cr/features/feature_chatbot/presentation/screens/chatbot_screen.dart';
import 'package:cr/features/feature_chatbot/presentation/screens/welcome_screen.dart';
import 'package:cr/features/feature_introduction/presentation/controllers/introduction_cubit.dart';
import 'package:cr/features/feature_setting/presentation/controllers/setting_bloc.dart';
import 'package:cr/features/feature_setting/presentation/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/feature_introduction/presentation/screens/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => IntroductionCubit()),
                BlocProvider(
                  create: (context) => ChatbotBloc(
                      chatWithAiUseCase: ChatWithAiUseCase(
                          chatBotRepository: ChatBotRepositoryImp(
                              chatBotRemoteData: ChatBotRemoteDataImp()))),
                ),
                BlocProvider(
                  create: (context) => SettingBloc(),
                )
              ],
              child: BlocBuilder<SettingBloc, SettingState>(
                builder: (context, state) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                        primaryColor: AppColors.blue,
                        dividerColor: AppColors.white,
                        textTheme: TextTheme(
                          titleLarge: AppFonts.inter32W700
                              .copyWith(color: AppColors.whiteIntroDark),
                          titleMedium: AppFonts.inter20W700
                              .copyWith(color: AppColors.whiteIntroDark),
                          titleSmall: AppFonts.inter16W500
                              .copyWith(color: AppColors.whiteIntroDark),
                          // to authentication
                          displayLarge: AppFonts.inter36W500
                              .copyWith(color: AppColors.whiteIntroDark),
                          displayMedium: AppFonts.inter20W600
                              .copyWith(color: AppColors.whiteIntroDark),
                          displaySmall: AppFonts.inter14W400
                              .copyWith(color: AppColors.whiteIntroDark),

                          // message receive
                          labelMedium: AppFonts.inter16W400
                              .copyWith(color: AppColors.black),

                          labelSmall: AppFonts.inter14W600
                              .copyWith(color: AppColors.whiteIntroDark),

                          // to the forget password and under
                          bodySmall: AppFonts.inter14W500
                              .copyWith(color: AppColors.blue),
                        ),
                        colorScheme: const ColorScheme.dark(
                          primary: AppColors.whiteIntroDark,
                          secondary: AppColors.serverBlue,
                          background: Color(0XFF21252F),
                        )),
                    routes: {
                      IntroductionScreen.route: (context) =>
                          IntroductionScreen(),
                      LoginScreen.route: (context) => LoginScreen()
                    },
                    home: IntroductionScreen(),
                  );
                },
              ));
        });
  }
}
