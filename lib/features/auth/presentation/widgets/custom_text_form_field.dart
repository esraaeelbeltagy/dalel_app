
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0 , right: 8 , top : 24 ,),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            labelText,
            style: TextStyles.poppinsMeduim12MeduimGreyColor(context),
          ),
          enabledBorder: gettextFieldBorder(),
          focusedBorder: gettextFieldBorder(),
          border: gettextFieldBorder(),
          disabledBorder: gettextFieldBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder gettextFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.meduimGreyColor),
    );
  }
}
