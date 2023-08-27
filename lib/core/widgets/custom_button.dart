import 'package:flutter/material.dart';
import 'package:mybookly/core/utlis/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.hint, required this.textcolor, required this.backgroundColor, this.borderRadius});
final String hint;
final Color textcolor;
final Color backgroundColor;
final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(onPressed: (){}, 
      style: TextButton.styleFrom(
    backgroundColor: backgroundColor,
    shape: RoundedRectangleBorder(
    borderRadius: borderRadius??BorderRadius.circular(12)
    )
    
      ),
      
      child: 
      Text(hint,style: Styles.textStyle18.copyWith(
        color: textcolor,
        fontWeight: FontWeight.bold,
      
      ),),
      
      
      ),
    );
  }
}