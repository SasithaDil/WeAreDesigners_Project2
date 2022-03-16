import 'package:assignment2/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final VoidCallback tapIconButton;
  final bool visibility;
  final IconData icon;
  const ReusableCard(
      {Key? key,
      required this.colour,
      required this.tapIconButton,
      required this.icon,
      required this.visibility})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/card.png'),
                  radius: 20.0,
                ),
                SizedBox(width: 10.0),
                ReusableText(
                  text: 'Small stuff adds up!',
                  colour: Colors.white,
                  size: 18.0,
                  weight: FontWeight.normal,
                ),
                SizedBox(width: 40.0),
                ReusableText(
                  text: '09-06-2018',
                  colour: Colors.white,
                  size: 15.0,
                  weight: FontWeight.normal,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: ReusableText(
                text:
                    'Last month, you made 42 transactions less than \$5. Spending a total of\$147.Want to cut down on frivilious spending?',
                colour: Colors.white,
                size: 15.0,
                weight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 8, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Visibility(
                      visible: visibility,
                      child: Container(
                        height: 30,
                        width: 170,
                        child: Center(
                          child: ReusableText(
                            text: 'Setup a goal'.toUpperCase(),
                            size: 15,
                            colour: Colors.black,
                            weight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: tapIconButton,
                    icon: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
