import 'package:flutter/material.dart';

import 'package:flutter_fest/resources/resources.dart';

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.sheduleBg),
          fit: BoxFit.none,
          alignment: Alignment.topLeft,
        ),
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            const _LogoWidget(),
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
        ),
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Stack(children: [
          Positioned(
            top: 40,
            left: 20,
            child: Image.asset(AppImages.sheduleFfLogo),
          ),
          Positioned(
            top: 20,
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

  @override
  double get minExtent => _height;

  @override
  double get maxExtent => _height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return const _SectionButtonWidget();
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _SectionButtonWidget extends StatelessWidget {
  const _SectionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      separatorBuilder: (context, index) {
        return const SizedBox(width: 10);
      },
      itemBuilder: (context, index) {
        return Center(
          child: SizedBox(
            height: 36,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  begin: FractionalOffset(-1, 0),
                  end: FractionalOffset(2.5, 0),
                  colors: [Color(0xFF00BD13), Color(0xFF170AF4)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.white30),
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
    );
  }
}
