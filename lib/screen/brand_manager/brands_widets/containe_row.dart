import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xff1ABC9C)),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffE74C3C)),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xff0062FF)),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffFFFF00)),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffD5D1DA)),
            child: const Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
