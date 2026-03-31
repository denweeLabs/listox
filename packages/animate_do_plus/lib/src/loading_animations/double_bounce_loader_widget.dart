import 'package:flutter/material.dart';

class DoubleBounceLoader extends StatefulWidget {
  const DoubleBounceLoader({
    super.key,
    this.color,
    this.size = 50.0,
    this.duration = const Duration(milliseconds: 2000),
  });

  final Color? color;
  final double size;
  final Duration duration;

  @override
  State<DoubleBounceLoader> createState() => _SpinKitDoubleBounceState();
}

class _SpinKitDoubleBounceState extends State<DoubleBounceLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      })
      ..repeat(reverse: true);
    _animation = Tween(begin: -0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: List.generate(2, (i) {
          return Transform.scale(
            scale: (1 - i - _animation.value.abs()).abs(),
            child: SizedBox.fromSize(
              size: Size.square(widget.size),
              child: _itemBuilder(i),
            ),
          );
        }),
      ),
    );
  }

  Widget _itemBuilder(int index) => DecoratedBox(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: widget.color!.withValues(alpha: 0.6),
    ),
  );
}
