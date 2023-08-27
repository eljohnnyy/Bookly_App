
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(hint: 'Free', textcolor: Colors.black, backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18),bottomLeft: Radius.circular(18)),
            ),
          ),
           Expanded(
            child: CustomButton(hint: 'Free Preview', textcolor: Colors.white, backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(topRight: Radius.circular(18),bottomRight: Radius.circular(18)),
            ),
          )
        ],
      ),
    );
  }
}