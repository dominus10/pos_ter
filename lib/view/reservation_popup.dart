import 'package:flutter/material.dart';

class ReservationPopup extends StatefulWidget {
  final BuildContext context;
  const ReservationPopup({Key? key, required this.context}) : super(key: key);

  @override
  State<ReservationPopup> createState() => _ReservationPopupState();
}

class _ReservationPopupState extends State<ReservationPopup> {
  @override
  Widget build(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const Text(
              'Reservation',
              style: TextStyle(fontSize: 20),
            ),
            for (var i in List.generate(5, (index) => index + 1))
              Column(
                children: [Text(i.toString()), const Divider()],
              )
          ],
        ),
      ),
    );
  }
}
