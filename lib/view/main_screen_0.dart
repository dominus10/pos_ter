import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pos_ter/view/outstanding_popup.dart';
import 'package:pos_ter/view/reservation_popup.dart';

class MainScreen0 extends StatelessWidget {
  final EdgeInsets smallPadding = const EdgeInsets.all(2);
  final BuildContext context;
  const MainScreen0({Key? key, required this.context}) : super(key: key);

  @override
  Widget build(context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Hello Admin!"),
            const Spacer(),
            SizedBox(
              width: 40.0,
              height: 40.0,
              child: IconButton(
                splashRadius: 20,
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  'Add New Reservation',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 5,
              height: MediaQuery.of(context).size.width / 3 * 2,
              child: MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return ReservationPopup(context: context);
                      },
                      isScrollControlled: true);
                },
                child: Card(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: smallPadding,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Reservation',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Expanded(
                            child: ShaderMask(
                              shaderCallback: (Rect rect) {
                                return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: const [
                                      0.85,
                                      0.95
                                    ],
                                    colors: [
                                      Colors.transparent,
                                      Colors.pink.shade100
                                    ]).createShader(rect);
                              },
                              blendMode: BlendMode.dstOut,
                              child: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                child: Column(
                                  children: [
                                    for (var i in List.generate(
                                        8, (index) => index + 1))
                                      SizedBox(
                                        width: double.infinity,
                                        height: 35,
                                        child: Card(
                                          child: Center(
                                            child: Text(
                                              '+6281${Random().nextInt(1000000000)}',
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 5,
              height: MediaQuery.of(context).size.width / 3 * 2,
              child: MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return OutstandingPopup(context: context);
                      },
                      isScrollControlled: true);
                },
                child: Card(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: smallPadding,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Undelivered Order',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Expanded(
                            child: ShaderMask(
                              shaderCallback: (Rect rect) {
                                return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: const [
                                      0.85,
                                      0.95
                                    ],
                                    colors: [
                                      Colors.transparent,
                                      Colors.pink.shade100
                                    ]).createShader(rect);
                              },
                              blendMode: BlendMode.dstOut,
                              child: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                child: Column(
                                  children: [
                                    for (var i in List.generate(
                                        8, (index) => index + 1))
                                      SizedBox(
                                        width: double.infinity,
                                        height: 35,
                                        child: Card(
                                          child: Center(
                                            child: Text(
                                              'Table $i - ${Random().nextInt(10)} orders',
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 5,
          height: MediaQuery.of(context).size.width / 3 * 1.65,
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return ReservationPopup(context: context);
                  },
                  isScrollControlled: true);
            },
            child: Card(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: smallPadding,
                  child: const Text(
                    'Table Available',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
