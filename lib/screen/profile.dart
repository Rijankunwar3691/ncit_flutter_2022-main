import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  String userName;

  ProfilePage(this.userName);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello there! \n${widget.userName}",
                  style: const TextStyle(fontSize: 30, fontFamily: 'Lobster'),
                ),
                // const Text('helo row', style: TextStyle(fontSize: 30)),
                // Container(
                //   padding: const EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 0),
                //   child: Image.asset(
                //     'assets/rijan.jpg',
                //     width: 80.0,
                //     height: 80.0,
                //   ),
                // ),
                GestureDetector(
                  onTap: null,
                  child: const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/rijan.jpg'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
