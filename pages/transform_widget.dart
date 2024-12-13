import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Transform widget"),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Center(
          child: Transform(
            transform: Matrix4.identity()
              ..rotateZ(0.2)
              ..scale(1.05, 1.05)
              ..translate(10.0, 40.0),
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/smirk.jpg",
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
