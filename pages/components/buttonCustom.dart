import 'package:flutter/material.dart';

class Buttoncustom extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const Buttoncustom({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
          child: Center(
            child: Text(text),
          ),
        ));
  }
}
