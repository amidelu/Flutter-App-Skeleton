import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_opl/common/helpers/navigation/app_navigator.dart';
import 'package:flutter_opl/presentation/auth/pages/sign_in_page.dart';
import 'package:flutter_opl/presentation/home/home_page.dart';
import 'package:flutter_opl/presentation/splash/cubit/splash_cubit.dart';
import 'package:flutter_opl/presentation/splash/cubit/splash_state.dart';

import '../../../core/configs/assets/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            AppNavigator.pushReplacement(const SignInPage());
          } 

          if (state is Authenticated) {
            AppNavigator.pushReplacement(const HomePage());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.splashBackground
                  )
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff1A1B20).withOpacity(0),
                    const Color(0xff1A1B20)
                  ]
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}