import 'package:flutter/material.dart';

class ItemBook extends StatelessWidget {
  const ItemBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "images/images.jpg",
                height: 100,
                width: 50,
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Spider-Man: Far from Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      "Following the events of Avengers: Endgame (2019), Spider-Man must step up to take on new threats in a world that has changed forever."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
