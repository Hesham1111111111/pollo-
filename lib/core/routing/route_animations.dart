import 'package:flutter/material.dart';

enum TransitionType {
  slideFromBottom,
  slideFromLeft,
  slideFromRight,
  fadeScale,
  zoom,
  none,
}

abstract class PageTransition {
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve,
  });
}

/// --- Slide Transitions ---
class MainSlideTransition implements PageTransition {
  final AxisDirection direction;

  MainSlideTransition({this.direction = AxisDirection.right});

  @override
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve = Curves.easeInOutCubic,
  }) {
    final CurvedAnimation curved = CurvedAnimation(parent: animation, curve: curve);

    // Determine begin offset based on direction
    Offset beginOffset;
    bool applyOvershoot = false;

    switch (direction) {
      case AxisDirection.right:
        beginOffset = const Offset(1.0, 0.0);
        applyOvershoot = true;
        break;
      case AxisDirection.left:
        beginOffset = const Offset(-1.0, 0.0);
        applyOvershoot = true;
        break;
      case AxisDirection.up:
        beginOffset = const Offset(0.0, -1.0);
        break;
      case AxisDirection.down:
        beginOffset = const Offset(0.0, 1.0);
        break;
    }

    // Tween sequence
    Animation<Offset> offsetAnimation;
    if (applyOvershoot) {
      // Slight overshoot for horizontal slides
      offsetAnimation = TweenSequence<Offset>([
        TweenSequenceItem(
          tween: Tween<Offset>(
            begin: beginOffset,
            end: const Offset(0.05, 0.0),
          ).chain(CurveTween(curve: Curves.easeOut)),
          weight: 80,
        ),
        TweenSequenceItem(
          tween: Tween<Offset>(
            begin: const Offset(0.05, 0.0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeIn)),
          weight: 20,
        ),
      ]).animate(curved);
    } else {
      // No overshoot for vertical slides
      offsetAnimation = Tween<Offset>(begin: beginOffset, end: Offset.zero).animate(curved);
    }

    return SlideTransition(
      position: offsetAnimation,
      child: FadeTransition(
        opacity: curved,
        child: child,
      ),
    );
  }
}

class SlideFromBottomTransition implements PageTransition {
  @override
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve = Curves.easeOutCubic,
  }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: curve)),
      child: child,
    );
  }
}

class SlideFromLeftTransition implements PageTransition {
  @override
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve = Curves.easeInOutCubic,
  }) {
    // Attractive slight overshoot slide
    final curved = CurvedAnimation(parent: animation, curve: curve);
    return SlideTransition(
      position: TweenSequence<Offset>([
        TweenSequenceItem(
            tween: Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: const Offset(0.05, 0.0),
            ).chain(CurveTween(curve: Curves.easeOut)),
            weight: 80),
        TweenSequenceItem(
            tween: Tween<Offset>(
              begin: const Offset(0.05, 0.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeIn)),
            weight: 20),
      ]).animate(curved),
      child: child,
    );
  }
}

class SlideFromRightTransition implements PageTransition {
  @override
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve = Curves.easeInOutCubic,
  }) {
    final curved = CurvedAnimation(parent: animation, curve: curve);
    return SlideTransition(
      position: TweenSequence<Offset>([
        TweenSequenceItem(
            tween: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: const Offset(-0.05, 0.0),
            ).chain(CurveTween(curve: Curves.easeOut)),
            weight: 80),
        TweenSequenceItem(
            tween: Tween<Offset>(
              begin: const Offset(-0.05, 0.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeIn)),
            weight: 20),
      ]).animate(curved),
      child: child,
    );
  }
}

/// --- FadeScale / Zoom Transitions ---
class FadeScaleTransition implements PageTransition {
  @override
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve = Curves.easeInOutCubic,
  }) {
    final curved = CurvedAnimation(parent: animation, curve: curve);
    return FadeTransition(
      opacity: curved,
      child: ScaleTransition(
        scale: Tween<double>(begin: 0.95, end: 1.0).animate(curved),
        child: child,
      ),
    );
  }
}

class ZoomTransition implements PageTransition {
  @override
  Widget buildTransition({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
    Curve curve = Curves.easeInOutCubic,
  }) {
    final curved = CurvedAnimation(parent: animation, curve: curve);
    return FadeTransition(
      opacity: curved,
      child: ScaleTransition(
        scale: Tween<double>(begin: 0.9, end: 1.0).animate(curved),
        child: child,
      ),
    );
  }
}

/// --- RouteAnimations Utility ---
class RouteAnimations {
  static PageRouteBuilder buildPageRoute({
    required Widget page,
    required RouteSettings settings,
    required TransitionType transitionType,
    Duration duration = const Duration(milliseconds: 400),
    Curve curve = Curves.easeInOutCubic,
  }) {
    if (transitionType == TransitionType.none) {
      return _buildNoTransition(settings: settings, page: page);
    }

    final transition = _getTransition(transitionType);

    return PageRouteBuilder(
      settings: settings,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return transition.buildTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
          curve: curve,
        );
      },
    );
  }

  static PageTransition _getTransition(TransitionType type) {
    switch (type) {
      case TransitionType.slideFromBottom:
        return MainSlideTransition(direction: AxisDirection.down);
      case TransitionType.slideFromLeft:
        return MainSlideTransition(direction: AxisDirection.left);
      case TransitionType.slideFromRight:
        return MainSlideTransition(direction: AxisDirection.right);
      case TransitionType.fadeScale:
        return FadeScaleTransition();
      case TransitionType.zoom:
        return ZoomTransition();
      case TransitionType.none:
        throw ArgumentError('TransitionType.none should be handled separately');
    }
  }

  static PageRouteBuilder _buildNoTransition({
    required RouteSettings settings,
    required Widget page,
  }) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }
}
