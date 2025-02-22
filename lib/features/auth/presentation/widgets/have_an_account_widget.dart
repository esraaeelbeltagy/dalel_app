
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
  });
  final String text1, text2;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: TextStyles.poppinsRegular12LightBrownColor(context)),
        TextButton(
          onPressed: () {},
          child: Text(
            text2,
            style: TextStyles.poppinsRegular12LightBrownColor(
              context,
            ).copyWith(color: AppColors.greyColor),
          ),
        ),
      ],
    );
  }
}
