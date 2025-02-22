
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(labelText: AppStrings.fristName),
        CustomTextField(labelText: AppStrings.lastName),
        CustomTextField(labelText: AppStrings.emailAddress),
        CustomTextField(labelText: AppStrings.password),
        SizedBox(height: 19),
        TermsAndConditionsWidget(),
        SizedBox(height: 91),
        CustomButton(text: AppStrings.signUp, onPressed: () {}),
      ],
    );
  }
}
