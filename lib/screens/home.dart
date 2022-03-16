import 'package:assignment2/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 45.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[350],
                      backgroundImage: const AssetImage('images/pic.jpeg'),
                      radius: 40.0,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 8.0),
                      ReusableText(
                        text: 'Welcome back, Marvin',
                        colour: Colors.black,
                        size: 20.0,
                      ),
                      SizedBox(height: 8.0),
                      ReusableText(
                        text: 'Your financial situation is looking good!',
                        colour: Color(0xffcbd3d6),
                        size: 12.0,
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              LinearPercentIndicator(
                lineHeight: 13.0,
                percent: 0.67,
                backgroundColor: Colors.grey[300],
                progressColor: Colors.blue[600],
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(
                      text: 'Beginner Level',
                      colour: Color(0xffcbd3d6),
                      size: 14.0,
                    ),
                    ReusableText(
                      text: 'XP 380/500',
                      colour: Color(0xffcbd3d6),
                      size: 14.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
