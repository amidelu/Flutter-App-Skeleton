import 'package:flutter/material.dart';
import 'package:flutter_opl/common/global_widgets/global_widgets.dart';
import 'package:flutter_opl/common/helpers/navigation/app_navigator.dart';
import 'package:flutter_opl/core/configs/theme/app_colors.dart';
import 'package:flutter_opl/core/service/global_storage.dart';
import 'package:flutter_opl/main.dart';
import 'package:flutter_opl/presentation/auth/pages/sign_in_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class Utils {
  // Showing toast
  static void showToast(String message, {Toast? length}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: length ?? Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.secondaryElement,
        fontSize: 16.0);
  }

  static void showPermissionDialog({String? title, String? message}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      customDialog(
          context: navigatorKey.currentContext!,
          title: title!,
          content: message!,
          onConfirm: () async {
            await openAppSettings();
          },
          onCancel: () {
            Navigator.of(navigatorKey.currentContext!).pop();
          });
    });
  }

  // Logout method
  static Future<void> logOut() async {
    GlobalStorage.clearProfile();
    AppNavigator.pushAndRemove(const SignInPage());
  }
}
