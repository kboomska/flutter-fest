import 'package:flutter/material.dart';

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate(),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.blue, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.blue, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.blue, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.blue, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.pink, height: 150),
              Container(color: Colors.pink, height: 150),
            ],
          ),
        ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight = 50;
  final double maxHeight = 300;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          Text('$shrinkOffset, $overlapsContent'),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxExtent ||
        minHeight != oldDelegate.minExtent;
  }
}
