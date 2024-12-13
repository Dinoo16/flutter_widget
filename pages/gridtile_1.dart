import 'package:flutter/material.dart';

class Gridtile1 extends StatelessWidget {
  const Gridtile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('G r i d T i l e'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(4, (index) {
            return SizedBox(
              child: GridTile(
                header: Container(
                  color: Colors.brown.shade300,
                  child: Center(
                    child: Text('Header + ${index + 1}'),
                  ),
                ),
                footer: Container(
                  color: Colors.blue.shade300,
                  child: Center(
                    child: Text("Footer ${index + 1}"),
                  ),
                ),
                child: Image.asset("assets/images/smirk.jpg"),
              ),
            );
          }),
        ));
  }
}
