import 'package:flutter/material.dart';
import 'package:flutter_opl/core/configs/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.width, this.buttonColor, required this.onPressed});

  final String? title;
  final double? width;
  final Color? buttonColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45.0,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        width: width ?? 1.sw,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.primaryElement,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            title!,
            style: Theme.of(context).textTheme.titleMedium
        ),
      ),
    ),);
  }
}
