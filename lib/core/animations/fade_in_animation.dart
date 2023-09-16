import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;
  final double revealOffset;
  final Offset slideBegin;
  final Offset slideEnd;

  const FadeIn({
    super.key,
    required this.child,
    required this.scrollController,
    required this.revealOffset,
    required this.slideBegin,
    required this.slideEnd,
  });

  @override
  State<FadeIn> createState() => _FadeInState();
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
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: widget.slideBegin,
      end: widget.slideEnd,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    widget.scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    final double scrollOffset = widget.scrollController.offset;
    final double revealOffset = widget.revealOffset;


    if (scrollOffset >= revealOffset && !_isVisible) {
      _controller.forward();
      setState(() {
        _isVisible = true;
      });
    } else if (scrollOffset < revealOffset && _isVisible) {
      _controller.reverse();
      setState(() {
        _isVisible = false;
      });
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
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: widget.child,
      ),
    );
  }
}
