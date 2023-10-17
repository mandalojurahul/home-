import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<int> containerCounts = [0, 0, 0, 0,0,0];

  List<Color> containerColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.deepPurple,
    Colors.black,
  ];

  void increment(int index) {
    setState(() {
      containerCounts[index]++;
    });
  }

  void decrement(int index) {
    setState(() {
      if (containerCounts[index] > 0) {
        containerCounts[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: containerColors[index],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 60, color: Colors.white),
                  Text(
                    "Count: ${containerCounts[index]}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          onPressed: () => increment(index),
                        ),
                      ),
                      SizedBox(width: 25),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          color: Colors.white,
                          onPressed: () => decrement(index),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }
}
