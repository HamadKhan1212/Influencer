import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String? title;
  final String? image;
  final bool? value;
  final Function(bool? v)? onTap;
  const CustomListTile(
      {Key? key, this.title, this.image, this.onTap, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 18,
          width: 18,
          color: Colors.grey.shade400,
          child: Checkbox(
            value: value,
            side: const BorderSide(
              color: Colors.transparent,
            ),
            onChanged: onTap,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title!,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        )
      ],
    );
  }
}
