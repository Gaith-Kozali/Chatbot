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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              IntroductionScreen.route: (context) => IntroductionScreen(),
              LoginScreen.route:(context) => LoginScreen()
            },
            home: MultiBlocProvider(providers: [
              BlocProvider(create: (context) => IntroductionCubit()),
              BlocProvider(
                create: (context) => ChatbotBloc(
                    chatWithAiUseCase: ChatWithAiUseCase(
                        chatBotRepository: ChatBotRepositoryImp(
                            chatBotRemoteData: ChatBotRemoteDataImp()))),
              )
            ], child: IntroductionScreen()),
          );
        });
  }
}
