
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: TextStyles.poppinsRegular12LightBrownColor(context),
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: TextStyles.poppinsRegular12LightBrownColor(
                  context,
                ).copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.lightBrownColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
