import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final int imageNum;
  final String foodName;

  const CustomCard({this.imageNum, this.foodName});
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  List<int> items = [1, 2, 3, 4, 5];
  int dropdownVal = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/meal${widget.imageNum}.png',
                  height: 200,
                  width: 200,
                ),
                Text(
                  widget.foodName,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            DropdownButton<int>(
              value: dropdownVal,
              icon: Icon(Icons.arrow_downward),
              iconSize: 25,
              elevation: 16,
              style: TextStyle(color: Colors.white),
              underline: Container(
                color: Colors.blueGrey,
                height: 2,
              ),
              onChanged: (newVal) {
                setState(
                  () {
                    dropdownVal = newVal;
                  },
                );
              },
              items: <int>[1, 2, 3, 4, 5].map<DropdownMenuItem<int>>(
                (int val) {
                  return DropdownMenuItem<int>(
                    value: val,
                    child: Text(
                      val.toString(),
                    ),
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
