import 'package:flutter/material.dart';

class OnBoardingChip extends StatelessWidget {

  final int? pageIndex;
  const OnBoardingChip({super.key,  required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 8,
          decoration: BoxDecoration(
            color: pageIndex == 0? Color(0xff8FDED5) : Color(0x3C8FDED5),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          width: 40,
          height: 8,
          decoration: BoxDecoration(
            color:  pageIndex == 1? Color(0xff8FDED5) : Color(0x3C8FDED5),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          width: 40,
          height: 8,
          decoration: BoxDecoration(
            color:  pageIndex == 2? const Color(0xff8FDED5) : const Color(0x3C8FDED5),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
        ),
      ],
    );
  }
}
