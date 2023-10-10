import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class InquaryRow extends StatelessWidget {
  final String title;
  const InquaryRow({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xff1ABC9C)),
            child: const Icon(
              Icons.check,
              size: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 280,
            child: ReusableText(
              title: title,
              size: 13,
              weight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
