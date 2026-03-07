import 'dart:math';

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

/// A lightweight standalone splash screen shown immediately at startup on
/// desktop, before the full provider/database stack is initialised.
/// It does NOT depend on Riverpod, ShadcnApp, or any heavy service.
class StartupSplash extends StatefulWidget {
  const StartupSplash({super.key});

  @override
  State<StartupSplash> createState() => _StartupSplashState();
}

class _StartupSplashState extends State<StartupSplash>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        // Allow dragging the borderless window from anywhere
        behavior: HitTestBehavior.translucent,
        onPanStart: (_) {
          windowManager.startDragging();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0F172A), // slate-900
                Color(0xFF1E293B), // slate-800
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo with ambient glow
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF64748B).withValues(alpha: 0.25),
                      blurRadius: 48,
                      spreadRadius: 16,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/branding/spotube-logo.png',
                  width: 120,
                  height: 120,
                ),
              ),

              const SizedBox(height: 32),

              // App title
              const Text(
                'Spotube',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  decoration: TextDecoration.none,
                ),
              ),

              const SizedBox(height: 8),

              // Tagline
              const Text(
                'Open Source Spotify Client',
                style: TextStyle(
                  color: Color(0xFF64748B), // slate-500
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
              ),

              const SizedBox(height: 64),

              // Animated loading dots
              AnimatedBuilder(
                animation: _controller,
                builder: (context, _) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(3, (i) {
                      // Stagger each dot by 1/3 of the cycle
                      final phase = (_controller.value - i / 3) % 1.0;
                      // Smooth sine-based brightness pulse
                      final brightness =
                          0.25 + 0.75 * (0.5 + 0.5 * sin(phase * 2 * pi));
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Color.lerp(
                              const Color(0xFF334155), // dim  (slate-700)
                              const Color(0xFF94A3B8), // bright (slate-400)
                              brightness,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
