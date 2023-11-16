import 'package:flutter/material.dart';

class AppLogo extends StatefulWidget {
  final String logoUrl;
  final double size;
  final AnimationType animationType;
  final bool shake;
  final bool repeat;
  final Duration duration;

  const AppLogo({
    Key? key,
    required this.logoUrl,
    this.size = 100.0,
    this.animationType = AnimationType.zoom,
    this.shake = true,
    this.repeat = true,
    this.duration = const Duration(seconds: 1),
  }) : super(key: key);

  @override
  _AppLogoState createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      animationBehavior: AnimationBehavior.normal,
    );

    switch (widget.animationType) {
      case AnimationType.zoom:
        _animation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
        break;
      case AnimationType.rotate:
        _animation =
            Tween<double>(begin: 0.0, end: 2 * 3.14).animate(_controller);
        break;
      default:
        _animation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
    }

    _controller.forward();

    if (widget.shake) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: Image.network(
        widget.logoUrl,
        width: widget.size,
        height: widget.size,
      ),
    );
  }
}

enum AnimationType {
  zoom,
  rotate,
}
