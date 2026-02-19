import 'dart:async';
import 'package:flutter/material.dart';

enum AppearDirection { fromBottom, fromTop, fromLeft, fromRight, none }

class AnimationWrapper extends StatefulWidget {
  final Widget child;
  final Duration duration; // fade-in / forward animation
  final Duration reverseDuration; // fade-out / reverse animation
  final Curve curve;
  final AppearDirection direction;
  final double offset;
  final Duration startDelay;
  final bool visible;

  const AnimationWrapper({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 900),
    this.reverseDuration = const Duration(milliseconds: 350), // faster fade out
    this.curve = Curves.easeOutCubic,
    this.direction = AppearDirection.fromBottom,
    this.offset = 30.0,
    this.startDelay = const Duration(milliseconds: 250),
    this.visible = true,
  });

  @override
  State<AnimationWrapper> createState() => _AnimationWrapperState();
}

class _AnimationWrapperState extends State<AnimationWrapper> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _scaleAnimation;
  Timer? _startTimer;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: widget.curve),
    );

    _scaleAnimation = Tween<double>(begin: 0.95, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: widget.curve),
    );

    Offset beginOffset;
    switch (widget.direction) {
      case AppearDirection.fromBottom:
        beginOffset = Offset(0, widget.offset / 100);
        break;
      case AppearDirection.fromTop:
        beginOffset = Offset(0, -widget.offset / 100);
        break;
      case AppearDirection.fromLeft:
        beginOffset = Offset(-widget.offset / 100, 0);
        break;
      case AppearDirection.fromRight:
        beginOffset = Offset(widget.offset / 100, 0);
        break;
      case AppearDirection.none:
        beginOffset = Offset.zero;
        break;
    }

    _slideAnimation = Tween<Offset>(begin: beginOffset, end: Offset.zero).animate(CurvedAnimation(parent: _controller, curve: widget.curve));

    // initial fade in after startDelay
    _startTimer = Timer(widget.startDelay, () {
      if (mounted && widget.visible) _controller.forward();
    });
  }

  @override
  void didUpdateWidget(covariant AnimationWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Trigger fade in/out when visible changes
    if (oldWidget.visible != widget.visible) {
      if (widget.visible) {
        _controller.forward();
      } else {
        // Temporarily shorten duration for fade-out
        _controller.duration = widget.reverseDuration;
        _controller.reverse().then((_) {
          // Restore original duration if needed
          if (mounted) _controller.duration = widget.duration;
        });
      }
    }
  }

  @override
  void dispose() {
    _startTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: widget.child,
        ),
      ),
    );
  }
}
