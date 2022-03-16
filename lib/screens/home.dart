import 'package:assignment2/screens/tabs/future.dart';
import 'package:assignment2/screens/tabs/monthly.dart';
import 'package:assignment2/screens/tabs/today.dart';
import 'package:assignment2/screens/tabs/yearly.dart';
import 'package:assignment2/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
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
                        weight: FontWeight.bold,
                      ),
                      SizedBox(height: 8.0),
                      ReusableText(
                        text: 'Your financial situation is looking good!',
                        colour: Color(0xffacb3b5),
                        size: 12.0,
                        weight: FontWeight.normal,
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
                      colour: Color(0xffacb3b5),
                      size: 14.0,
                      weight: FontWeight.normal,
                    ),
                    ReusableText(
                      text: 'XP 380/500',
                      colour: Colors.black,
                      size: 14.0,
                      weight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
              const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(text: 'Today'),
                  Tab(text: 'Monthly'),
                  Tab(text: 'Yearly'),
                  Tab(text: 'future'),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Today(),
                    Monthly(),
                    Yearly(),
                    Future(),
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
