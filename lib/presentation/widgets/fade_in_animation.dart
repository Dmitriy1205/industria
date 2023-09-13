import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;

  FadeIn({
    required this.child,
    required this.scrollController,
  });

  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(_controller);

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
    _isVisible = true;

    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    const double containerHeight = 400.0;
    const double itemHeight = 100.0;
    const double startingOffset = containerHeight * 0;
    const double endingOffset = startingOffset + containerHeight;
    final double scrollOffset = widget.scrollController.offset;

    if (scrollOffset >= startingOffset && scrollOffset <= endingOffset) {
      if (!_isVisible) {
        _controller.forward();
        setState(() {
          _isVisible = true;
        });
      }
    } else if (scrollOffset < startingOffset) {
      if (_isVisible) {
        _controller.reverse();
        setState(() {
          _isVisible = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Opacity(
        opacity: _fadeAnimation.value,
        child: widget.child,
      ),
    );
  }
}
