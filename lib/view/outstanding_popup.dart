import 'package:flutter/material.dart';

class OutstandingPopup extends StatefulWidget {
  final BuildContext context;
  const OutstandingPopup({Key? key, required this.context}) : super(key: key);

  @override
  State<OutstandingPopup> createState() => _OutstandingPopupState();
}

class _OutstandingPopupState extends State<OutstandingPopup> {
  @override
  Widget build(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const Text(
              'Undelivered Order',
              style: TextStyle(fontSize: 20),
            ),
            for (var i in List.generate(5, (index) => index + 1))
              Column(
                children: [Text(i.toString()), Divider()],
              )
          ],
        ),
      ),
    );
  }
}
