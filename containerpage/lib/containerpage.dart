
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explore Containers',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF172554),
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Discover clean and modern designs.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF64748B),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: colorBox(
                      title: 'Overview',
                      color: const Color(0xFFDBEAFE),
                      textColor: const Color(0xFF1D4ED8),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Analytics',
                      color: const Color(0xFFD1FAE5),
                      textColor: const Color(0xFF047857),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Projects',
                      color: const Color(0xFFEDE9FE),
                      textColor: const Color(0xFF6D28D9),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: colorBox(
                      title: 'Performance',
                      color: const Color(0xFFFFEDD5),
                      textColor: const Color(0xFFC2410C),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Statistics',
                      color: const Color(0xFFFCE7F3),
                      textColor: const Color(0xFFBE185D),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Activity',
                      color: const Color(0xFFCCFBF1),
                      textColor: const Color(0xFF0F766E),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: colorBox(
                      title: 'Workspace',
                      color: const Color(0xFFE2E8F0),
                      textColor: const Color(0xFF334155),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Resources',
                      color: const Color(0xFFCFFAFE),
                      textColor: const Color(0xFF0E7490),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Reports',
                      color: const Color(0xFFFFE4E6),
                      textColor: const Color(0xFFBE123C),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: colorBox(
                      title: 'Insights',
                      color: const Color(0xFFFEF3C7),
                      textColor: const Color(0xFF92400E),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Productivity',
                      color: const Color(0xFFE0E7FF),
                      textColor: const Color(0xFF3730A3),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: colorBox(
                      title: 'Settings',
                      color: const Color(0xFFDCFCE7),
                      textColor: const Color(0xFF166534),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget colorBox({
    required String title,
    required Color color,
    required Color textColor,
  }) {
    return Container(
      height: 120,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: textColor.withValues(alpha: 0.12),
        ),
        boxShadow: [
          BoxShadow(
            color: textColor.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
