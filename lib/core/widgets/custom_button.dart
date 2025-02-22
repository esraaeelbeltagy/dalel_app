
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , 
  required this.text , 
  this.backGroundColor , 
  this.textColor , 
  this.onPressed , 
  });
final String text ; 
final Color?  backGroundColor ;
final Color?  textColor ;
final void Function()? onPressed  ; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56 ,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor ?? AppColors.primaryColor,
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
           text,
          style: TextStyles.poppinsMeduim18White(context).copyWith(color: textColor ?? AppColors.whiteColor),
        ),
      ),
    );
  }
}
