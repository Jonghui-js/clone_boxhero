import 'package:clone_boxhero/Screen/HomeScreen/local_widget/BluePageView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BlueSign extends StatefulWidget {
  @override
  _BlueSignState createState() => _BlueSignState();
}

class _BlueSignState extends State<BlueSign> {
  final controller = PageController(viewportFraction: 1.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.all(20),
      height: 170,
      child: Stack(
        children: [
          PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              BluePageView(
                title: '오늘',
                moment: '9월 6일',
                total: 417,
                input: 2,
                output: 0,
              ),
              BluePageView(
                title: '어제',
                moment: '9월 5일',
                total: 417,
                input: 2,
                output: 0,
              ),
            ],
          ),
          Positioned(
            right: 0.0,
            child: Container(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: WormEffect(
                      activeDotColor: Colors.white, dotColor: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}
