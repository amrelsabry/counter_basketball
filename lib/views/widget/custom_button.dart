import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, required this.name});
  final void Function()? ontap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(onPressed: ontap,
       child: Text(name,style: TextStyle(fontSize: 18),)));

  }
}