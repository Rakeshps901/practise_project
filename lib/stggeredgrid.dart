import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main()
{
  runApp(MaterialApp(home: Stag_Grid(),));
}
class Stag_Grid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered GridView"),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                      child: Icon(Icons.widgets)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.orange,
                  child: const Center(
                      child: Icon(Icons.wifi)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                      child: Icon(Icons.map)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.purple,
                  child: const Center(
                      child: Icon(Icons.send)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.pink,
                  child: Center(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/staggered ui/empire.png'))),
                      ),
                      ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
