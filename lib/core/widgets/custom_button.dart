
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , 
  required this.text , 
  this.backGroundColor , 
  });
final String text ; 
final Color?  backGroundColor ; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48 ,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor ?? AppColors.primaryColor,
        
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
           text,
          style: AppTextStyles.poppinsMeduim18White(context),
        ),
      ),
    );
  }
}
