import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    //function to build on FAQ ExpansionTile
    Widget buildExpansionTile({
      required String question,
      required String answer,
      required IconData icon,
      Color? backgroundColor,
    }) {
      return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ExpansionTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(
            question,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          childrenPadding: const EdgeInsets.all(16),
          backgroundColor: backgroundColor,
          collapsedBackgroundColor: Colors.white,
          textColor: Colors.blue,
          iconColor: Colors.blue,
          collapsedTextColor: Colors.black,
          collapsedIconColor: Colors.grey,
          children: [
            Text(answer),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion tile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          buildExpansionTile(
              question: 'question',
              answer:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              icon: Icons.flutter_dash),
          buildExpansionTile(
              question: 'question 2',
              answer:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.",
              icon: Icons.flutter_dash),
          buildExpansionTile(
              question: 'question 3',
              answer: "answer",
              icon: Icons.flutter_dash),
        ],
      ),
    );
  }
}
