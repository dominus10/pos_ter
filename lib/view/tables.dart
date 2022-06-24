import 'package:flutter/material.dart';
class Tables extends StatefulWidget {
  const Tables({Key? key}) : super(key: key);

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  Offset position = Offset(0.0, 7.0);

  @override
  Widget build(BuildContext context) {
    return Container(child: SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: position.dy,
            left: position.dx+ 30,
            child: Draggable(
              feedback: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0,0)
                      )
                    ]
                ),
                width: 50,
                height: 50,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0,0)
                        )
                      ]
                  ),
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
          Draggable(
            feedback: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0,0)
                    )
                  ]
              ),
              width: 50,
              height: 50,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0,0)
                      )
                    ]
                ),
                width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    ),),);
  }
}
