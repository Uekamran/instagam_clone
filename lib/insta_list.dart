import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagam_clone/insta_stories.dart';

class InstaList extends StatelessWidget {
  const InstaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? SizedBox(
                height: deviceSize.height * 0.18,
                child: InstaStories(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //row 1
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/avatar4.png"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "imKamran",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                  //row 2
                  Flexible(
                    fit: FlexFit.loose,
                    child: Image.asset(
                      "assets/images/second.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // row3
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.heart),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(FontAwesomeIcons.comment),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(FontAwesomeIcons.paperPlane),
                            ]),
                        Icon(FontAwesomeIcons.bookmark),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Liked by Kamran and 115,609 others",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/avatar2.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        // Text(
                        //   "Add a Comment....",
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     color: Colors.grey,
                        //   ),
                        // ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a Comment...',
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Row(
                      children: [
                        Text(
                          "1 Day ago",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              );
      },
    );
  }
}
