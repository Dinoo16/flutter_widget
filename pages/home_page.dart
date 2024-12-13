import 'package:flutter/material.dart';
import 'package:flutter_widget_tut/pages/components/buttonCustom.dart';
import 'package:flutter_widget_tut/pages/gridtile_1.dart';
import 'package:flutter_widget_tut/pages/my_backdrop_filter.dart';
import 'package:flutter_widget_tut/pages/my_expansion_tile.dart';
import 'package:flutter_widget_tut/pages/my_range_slider.dart';
import 'package:flutter_widget_tut/pages/my_shader_mask.dart';
import 'package:flutter_widget_tut/pages/my_sliver_grid.dart';
import 'package:flutter_widget_tut/pages/transform_widget.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: [
            Buttoncustom(
              text: "Grid tile",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Gridtile1())),
            ),
            Buttoncustom(
              text: "Transfrom widget",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransformWidget())),
            ),
            Buttoncustom(
              text: "Expansion Tile",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyExpansionTile())),
            ),
            Buttoncustom(
              text: "Backdrop Filter",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyBackdropFilter())),
            ),
            Buttoncustom(
              text: "Flutter ShaderMask",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyShaderMask())),
            ),
            Buttoncustom(
              text: "Sliver Grid",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySliverGrid())),
            ),
            Buttoncustom(
              text: "Range Slider",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyRangeSlider())),
            ),
            Buttoncustom(
              text: "Range Slider",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyRangeSlider())),
            ),
          ],
        ),
      ),
    );
  }
}
