import 'package:flutter/material.dart';
import 'package:instagam_clone/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
      backgroundColor: Color(0xfff8faf8),
      centerTitle: true,
      elevation: 0,
      leading: Icon(Icons.camera_alt),
      title: SizedBox(
        height: 35.0,
        child: Image.asset('assets/images/insta_logo.png'),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send),
        ),
      ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_box),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
