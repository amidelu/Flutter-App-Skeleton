import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_opl/core/constants/api_urls.dart';
import 'package:flutter_opl/presentation/splash/cubit/splash_cubit.dart';
import 'package:flutter_opl/service_locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

import 'build_environment.dart';
import 'core/configs/theme/g_theme.dart';
import 'core/network/connectivity/connectivity_cubit.dart';
import 'presentation/auth/bloc/sign_in_bloc.dart';
import 'presentation/global_widgets/no_internet_widget.dart';
import 'presentation/splash/pages/splash.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  if (kDebugMode) {
    BuildEnvironment.init(
      flavor: BuildFlavor.development,
      baseUrl: 'test base url',
    );
  } else {
    BuildEnvironment.init(
      flavor: BuildFlavor.production,
      baseUrl: 'production base url',
    );
  }

  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ConnectivityCubit(Connectivity())),
        BlocProvider(create: (context) => SplashCubit()..appStarted()),
      ],
      child: BlocBuilder<ConnectivityCubit, ConnectivityState>(
        builder: (context, state) {
          if (state is ConnectivityOffline) {
            return const NoInternetWidget();
          } else if (state is ConnectivityOnline) {
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  navigatorKey: navigatorKey,
                  theme: GTheme.lightTheme.copyWith(),
                  themeMode: ThemeMode.system,
                  home: const SplashPage(),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
