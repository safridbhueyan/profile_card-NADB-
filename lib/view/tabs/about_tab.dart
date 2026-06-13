import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Professional Biography',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'I\'m a passionate developer focused on building sleek, intuitive, and highly scalable user experiences. With over five years of active involvement in the Flutter ecosystem, I specialize in bringing graphic designs to life through clean architecture and custom responsive interfaces. I enjoy bridging the gap between developers and designers, building fluid micro-interactions and animations that wow users.',
            style: TextStyle(
              fontSize: 14.5,
              color: Color(0xFF94A3B8),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'My Core Philosophy',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF06B6D4),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Write expressive, simple, and self-documenting code. Never compromise user experience for implementation speed, and always ensure pixel-perfect rendering on all devices.',
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: Color(0xFFCBD5E1),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 28),
          // Mini Metrics Cards
          Row(
            children: [
              Expanded(
                child: _buildMetricCard('5+', 'Years Exp'),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildMetricCard('30+', 'Shipped Apps'),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildMetricCard('100%', 'Client Love'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard(String value, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF0F172A).withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF334155).withOpacity(0.4)),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6366F1),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }
}
