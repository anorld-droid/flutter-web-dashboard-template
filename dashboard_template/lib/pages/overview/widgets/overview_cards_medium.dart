import 'package:dashboard_template/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(children: [
          InfoCard(
            title: "Rides in progress",
            value: "7",
            OnTap: () {},
            topColor: Colors.orange,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCard(
            title: "Packages delivered",
            value: "17",
            OnTap: () {},
            topColor: Colors.lightGreen,
          ),
        ]),
        Row(children: [
          InfoCard(
            title: "Cancelled delivery",
            value: "3",
            OnTap: () {},
            topColor: Colors.redAccent,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCard(
            title: "Scheduled deliveries",
            value: "7",
            OnTap: () {},
          ),
        ])
      ],
    );
  }
}
