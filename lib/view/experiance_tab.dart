import 'package:flutter/material.dart';

Widget buildExperienceTab() {
  return Container(
    key: const ValueKey('experience'),
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
          'Experience & Education',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 24),
        buildExperienceTimelineItem(
          role: 'Lead Mobile Engineer',
          company: 'TechVanguard Inc, San Francisco',
          period: '2024 - Present',
          description:
              'Architecting flagship enterprise cross-platform applications in Flutter, improving rendering efficiency by 30% and coordinating development cycles with the engineering team.',
        ),
        buildExperienceTimelineItem(
          role: 'Senior Flutter Developer',
          company: 'DesignCraft Studio, NYC',
          period: '2021 - 2024',
          description:
              'Created highly customized animated interactions and responsive layouts for complex web and mobile apps. Maintained modular design tokens across projects.',
        ),
        buildExperienceTimelineItem(
          role: 'Bachelor of Science in Computer Science',
          company: 'Stanford University',
          period: '2017 - 2021',
          description:
              'Completed coursework in Software Engineering, Human-Computer Interaction, and Cloud Systems. Graduated with Honors.',
        ),
      ],
    ),
  );
}

Widget buildExperienceTimelineItem({
  required String role,
  required String company,
  required String period,
  required String description,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: const Color(0xFF06B6D4),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF0F172A), width: 3),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF06B6D4).withOpacity(0.4),
                  blurRadius: 8,
                  spreadRadius: 2,
                )
              ],
            ),
          ),
          Container(
            width: 2,
            height: 100,
            color: const Color(0xFF334155),
          ),
        ],
      ),
      const SizedBox(width: 20),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    role,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  period,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF94A3B8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              company,
              style: const TextStyle(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: Color(0xFF6366F1),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 13.5,
                color: Color(0xFF94A3B8),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    ],
  );
}
