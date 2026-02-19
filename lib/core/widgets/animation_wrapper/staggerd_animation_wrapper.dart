import 'package:flutter/material.dart';

class StaggeredAnimationWrapper extends StatefulWidget {
  final List<Widget> children;
  final Duration initialDelay;
  final Duration itemDelay;
  final Duration animationDuration;
  final double slideOffset;
  final double? spacing;

  const StaggeredAnimationWrapper({
    super.key,
    required this.children,
    this.initialDelay = const Duration(milliseconds: 350),
    this.itemDelay = const Duration(milliseconds: 150),
    this.animationDuration = const Duration(milliseconds: 600),
    this.slideOffset = 30.0,
    this.spacing,
  });

  @override
  State<StaggeredAnimationWrapper> createState() => _StaggeredAnimationWrapperState();
}

class _StaggeredAnimationWrapperState extends State<StaggeredAnimationWrapper> with TickerProviderStateMixin {
  late final List<AnimationController> _controllers = [];
  late final List<Animation<Offset>> _slideAnimations = [];
  late final List<Animation<double>> _fadeAnimations = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < widget.children.length; i++) {
      final controller = AnimationController(
        vsync: this,
        duration: widget.animationDuration,
      );

      final CurvedAnimation curved = CurvedAnimation(parent: controller, curve: Curves.easeOutCubic);

      final Animation<Offset> slide = Tween<Offset>(
        begin: Offset(0, widget.slideOffset / 100),
        end: Offset.zero,
      ).animate(curved);

      final Animation<double> fade = Tween<double>(begin: 0.0, end: 1.0).animate(curved);

      _controllers.add(controller);
      _slideAnimations.add(slide);
      _fadeAnimations.add(fade);

      // Staggered start
      Future.delayed(widget.initialDelay + widget.itemDelay * i, () {
        if (mounted) controller.forward();
      });
    }
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widget.spacing ?? 0,
      children: List.generate(widget.children.length, (i) {
        return FadeTransition(
          opacity: _fadeAnimations[i],
          child: SlideTransition(
            position: _slideAnimations[i],
            child: widget.children[i],
          ),
        );
      }),
    );
  }
}
