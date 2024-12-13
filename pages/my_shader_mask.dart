import 'package:flutter/material.dart';

class MyShaderMask extends StatelessWidget {
  const MyShaderMask({super.key});

  // defind the gradient
  final Gradient gradient = const LinearGradient(
    colors: [Colors.purple, Colors.blue, Colors.teal, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Flutter ShaderMask"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: const Text(
                "Believe in Yourself!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: const Icon(Icons.lightbulb_outline, size: 100),
            ),
            const SizedBox(
              height: 40,
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(vertical: 16)),
                onPressed: () {},
                child: const Text("Get Inspired"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
