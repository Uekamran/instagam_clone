import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText =
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text(
      "Stories",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Row(
      children: [
        Icon(Icons.play_arrow),
        Text("Watch all", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  ]);
  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/avatar4.png"),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              index == 0
                  ? Positioned(
                      child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            size: 14,
                            color: Colors.white,
                          )))
                  : Container(),
            ],
          );
        },
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
