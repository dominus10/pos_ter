import 'package:flutter/material.dart';

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
        Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 5,
                  height: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Padding(
                          padding: smallPadding,
                          child: const Text('Reservation'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 5,
                  height: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Padding(
                          padding: smallPadding,
                          child: const Text('Reservation'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 5,
              height: MediaQuery.of(context).size.width / 3 * 2,
              child: MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                child: Card(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: smallPadding,
                      child: Column(
                        children: [
                          const Text('Reservation'),
                          Container(
                            height: 1.0,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: ShaderMask(
                                shaderCallback: (Rect rect) {
                                  return const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [
                                        0.85,
                                        0.95
                                      ],
                                      colors: [
                                        Colors.transparent,
                                        Colors.white
                                      ]).createShader(rect);
                                },
                                blendMode: BlendMode.dstOut,
                                child: Flexible(
                                  child: Wrap(
                                    children: [
                                      Column(
                                        children: [
                                          for (var i in List.generate(
                                              8, (index) => index + 1))
                                            SizedBox(
                                              width: double.infinity,
                                              height: 50,
                                              child: Card(
                                                child: Center(
                                                  child: Text(
                                                    'Table $i',
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
