import 'package:assignment2/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  bool isFavourite = false;
  bool isFavourite1 = false;
  bool isFavourite2 = false;
  bool isFavourite3 = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        ReusableCard(
          colour: const Color(0xff468cfc),
          visibility: !isFavourite,
          icon: isFavourite ? Icons.favorite : Icons.favorite_border,
          tapIconButton: () {
            setState(() {
              // print('tap');
              isFavourite = true;
            });
          },
        ),
        const SizedBox(height: 15.0),
        ReusableCard(
          colour: const Color(0xff51d1c2),
          visibility: !isFavourite1,
          icon: isFavourite1 ? Icons.favorite : Icons.favorite_border,
          tapIconButton: () {
            setState(() {
              isFavourite1 = true;
            });
          },
        ),
        const SizedBox(height: 15.0),
        ReusableCard(
          colour: const Color(0xff5a69ca),
          visibility: !isFavourite2,
          icon: isFavourite2 ? Icons.favorite : Icons.favorite_border,
          tapIconButton: () {
            setState(() {
              isFavourite2 = true;
            });
          },
        ),
        const SizedBox(height: 15.0),
        ReusableCard(
          colour: const Color(0xfffe86a8),
          visibility: !isFavourite3,
          icon: isFavourite3 ? Icons.favorite : Icons.favorite_border,
          tapIconButton: () {
            setState(() {
              isFavourite3 = true;
            });
          },
        ),
      ],
    );
  }
}
