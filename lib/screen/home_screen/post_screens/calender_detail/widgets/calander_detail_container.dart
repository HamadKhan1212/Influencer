import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

class CalenderDetailContainer extends StatelessWidget {
  const CalenderDetailContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              Image.asset('images/icons/facebook2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
              Image.asset('images/icons/linkedIn2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
              Image.asset('images/icons/linkedIn2.png'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
              Image.asset('images/icons/facebook2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
              Image.asset('images/icons/instagram2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              DottedDashedLine(
                  dashColor: const Color(0xff5A5959),
                  height: 2,
                  dashWidth: 8,
                  width: MediaQuery.of(context).size.width * 0.74,
                  axis: Axis.horizontal),
              Image.asset('images/icons/twitter2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              Image.asset('images/icons/linkedIn2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
              Image.asset('images/icons/instagram2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              DottedDashedLine(
                  dashColor: const Color(0xff5A5959),
                  height: 2,
                  dashWidth: 8,
                  width: MediaQuery.of(context).size.width * 0.6,
                  axis: Axis.horizontal),
              Image.asset('images/icons/instagram2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              DottedDashedLine(
                  dashColor: const Color(0xff5A5959),
                  height: 2,
                  dashWidth: 8,
                  width: MediaQuery.of(context).size.width * 0.15,
                  axis: Axis.horizontal),
              Image.asset('images/icons/twitter2.png'),
              DottedDashedLine(
                  dashColor: const Color(0xff5A5959),
                  height: 1,
                  dashWidth: 8,
                  width: MediaQuery.of(context).size.width * 0.58,
                  axis: Axis.horizontal),
              Image.asset('images/icons/facebook2.png'),
              const Expanded(
                  child: DottedDashedLine(
                      dashColor: Color(0xff5A5959),
                      height: 2,
                      width: 100,
                      dashWidth: 8,
                      axis: Axis.horizontal)),
            ],
          ),
        ),
      ],
    );
  }
}
