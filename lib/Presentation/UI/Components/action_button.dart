import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function fun;
  const ActionButton({super.key, required this.text, required this.fun});

  @override
  Widget build(BuildContext context) {
    return  Container(width: double.infinity,
        padding: const EdgeInsets.only(left: 24,right: 24,bottom: 32),
        child:ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff84DBD7),),
            fixedSize: MaterialStateProperty.all(const Size(double.infinity,35),),
          ),
        onPressed: (){},
    child:const Text("Get Started",
    style: TextStyle(
    color: Color(0xffFFFFFF),
    fontFamily: "Noto Sans",
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),);
  }
}
