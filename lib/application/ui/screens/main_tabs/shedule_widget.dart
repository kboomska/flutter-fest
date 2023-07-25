import 'package:flutter/material.dart';

import 'package:flutter_fest/application/ui/widgets/shedule_row/schedule_row_widget.dart';
import 'package:flutter_fest/resources/resources.dart';

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.of(context).padding.top;

    return SafeArea(
      top: false,
      child: CustomScrollView(
        slivers: [
          const _LogoWidget(),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(topInset: topInset),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(AppImages.sheduleBg),
          ),
          Positioned(
            top: 80,
            left: 20,
            child: Image.asset(AppImages.sheduleFfLogo),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: Image.asset(AppImages.sheduleSurfLogo),
          ),
        ]),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double _height = 56;
  final double topInset;

  const _SliverAppBarDelegate({required this.topInset});

  @override
  double get minExtent => _height + topInset;

  @override
  double get maxExtent => _height + topInset;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _SectionButtonWidget(topInset: topInset);
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _SectionButtonWidget extends StatelessWidget {
  final double topInset;

  const _SectionButtonWidget({required this.topInset});

  @override
  Widget build(BuildContext context) {
    const totalItem = 4;
    const itemGradientWidth = 2;
    const itemGradientStep = itemGradientWidth / 2;
    const startGradientPoint = -itemGradientStep;
    const endGradientPoint = totalItem * itemGradientWidth + itemGradientStep;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20, right: 20, top: topInset),
        scrollDirection: Axis.horizontal,
        itemCount: totalItem,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (context, index) {
          final currentStartPoint =
              startGradientPoint - index * itemGradientWidth;
          final currentEndPoint = endGradientPoint + currentStartPoint;

          return Center(
            child: SizedBox(
              height: 36,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    begin: FractionalOffset(currentStartPoint, 0),
                    end: FractionalOffset(currentEndPoint, 0),
                    colors: const [Color(0xFF00BD13), Color(0xFF170AF4)],
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    elevation: MaterialStateProperty.all(0),
                    minimumSize: MaterialStateProperty.all(Size.zero),
                  ),
                  child: Text('Section $index'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
