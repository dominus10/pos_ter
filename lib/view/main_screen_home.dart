import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreenHome extends StatelessWidget {
  const MainScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    int topSliverGridLength = 4;
    double fontSize(context) {
      return MediaQuery.of(context).size.width * 0.014;
    }

    List<List<dynamic>> orderText = [
      [Icons.create, 'New'],
      [Icons.book, 'Reservation'],
      [Icons.delivery_dining, 'Delivery'],
      [Icons.check, 'Completed']
    ];

    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: MaterialButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      orderText[index][0],
                      size: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.width * 0.08
                          : 50,
                    ),
                    Text(
                      orderText[index][1],
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize:
                            fontSize(context) < 11 ? 11 : fontSize(context),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }, childCount: topSliverGridLength),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: MediaQuery.of(context).size.width >
                    MediaQuery.of(context).size.height
                ? 1.7
                : 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    color: Colors.grey[500],
                    thickness: 0.8,
                  ),
                  Container(
                    color: Colors.grey[50],
                    width: 250,
                    height: 10,
                  ),
                  const Text('ORDER LIST / UNCOMPLETED'),
                ],
              ),
            );
          }, childCount: 1),
        ),
        SliverFillRemaining(
          child: CarouselSlider(
            items: List.generate(10, (index) => index++).map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Card(
                      child: Text(
                        'text $i',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 0.3),
          ),
        ),
        // SliverGrid(
        //   delegate: SliverChildBuilderDelegate((context, index) {
        //     return Card(
        //       child: Container(
        //         color: Colors.blue[100 * (index % 9 + 1)],
        //         alignment: Alignment.center,
        //         child: Text(
        //           "Item $index",
        //           style: const TextStyle(fontSize: 30),
        //         ),
        //       ),
        //     );
        //   }, childCount: midSliverGridLength),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     childAspectRatio: childAspectRatio(context),
        //   ),
        // ),
        // SliverList(
        //   delegate: SliverChildBuilderDelegate((context, index) {
        //     return Card(
        //       child: Container(
        //         color: Colors.blue[100 * (index % 9 + 1)],
        //         height: 80,
        //         alignment: Alignment.center,
        //         child: Text(
        //           "Item $index",
        //           style: const TextStyle(fontSize: 30),
        //         ),
        //       ),
        //     );
        //   }, childCount: 10),
        // ),
      ],
    );
  }
}
