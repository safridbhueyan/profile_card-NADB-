import 'package:flutter/material.dart';
import 'package:profilecard/view/widgets/social_burron.dart';

Widget buildConnectTab({required BuildContext context}) {
  return Container(
    key: const ValueKey('connect'),
    padding: const EdgeInsets.all(28.0),
    decoration: BoxDecoration(
      color: const Color(0xFF1E293B).withOpacity(0.5),
      borderRadius: BorderRadius.circular(24),
      border: Border.all(color: const Color(0xFF334155).withOpacity(0.5)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Connect & Follow',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Feel free to connect with me across any of the platforms listed below. I actively publish articles, share insights on Flutter web performance, and open-source personal libraries.',
          style: TextStyle(
            fontSize: 14.5,
            color: Color(0xFF94A3B8),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 24),
        buildSocialButton(
          context: context,
          icon: Icons.code,
          platform: 'GitHub',
          username: '@alexriveradev',
          accentColor: Colors.white,
        ),
        const SizedBox(height: 12),
        buildSocialButton(
          context: context,
          icon: Icons.work_outline,
          platform: 'LinkedIn',
          username: 'in/alexrivera',
          accentColor: const Color(0xFF0077B5),
        ),
        const SizedBox(height: 12),
        buildSocialButton(
          context: context,
          icon: Icons.chat_bubble_outline,
          platform: 'Twitter / X',
          username: '@alexriveradev',
          accentColor: const Color(0xFF1DA1F2),
        ),
      ],
    ),
  );
}
