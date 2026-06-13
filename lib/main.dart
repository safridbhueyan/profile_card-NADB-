import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alex Rivera | Creative Technologist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(
          0xFF0F172A,
        ), // Tailored slate-900 background
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6366F1), // Indigo accent
          secondary: Color(0xFF06B6D4), // Cyan accent
          surface: Color(0xFF1E293B), // Slate-800 surfaces
          background: Color(0xFF0F172A),
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _activeTab = 0; // 0: About, 1: Skills, 2: Experience, 3: Connect
  bool _emailCopied = false;

  void _copyEmail() {
    setState(() {
      _emailCopied = true;
    });
    // Visual indicator reset
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _emailCopied = false;
        });
      }
    });

    // Show snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Email copied to clipboard: alex.rivera@dev.io'),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 2),
        backgroundColor: Color(0xFF06B6D4),
      ),
    );
  }

  void _showContactModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1E293B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Color(0xFF334155)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Let\'s Collaborate!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.white70),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Thank you for reaching out. Send me a quick description of your project and I\'ll get back to you within 24 hours.',
                style: TextStyle(color: Color(0xFF94A3B8), height: 1.4),
              ),
              const SizedBox(height: 20),
              // Name textfield placeholder
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  labelStyle: TextStyle(color: Color(0xFF94A3B8)),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6366F1), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Email textfield placeholder
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Color(0xFF94A3B8)),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6366F1), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Message textfield placeholder
              const TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'Message',
                  labelStyle: TextStyle(color: Color(0xFF94A3B8)),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6366F1), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Message sent successfully!'),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Color(0xFF6366F1),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6366F1),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Submit Message',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 900;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6366F1), Color(0xFF06B6D4)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'PORTFOLIO',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'Alex Rivera',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton.icon(
              onPressed: () => _showContactModal(context),
              icon: const Icon(Icons.mail_outline, size: 16),
              label: const Text('Hire Me'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF6366F1),
                elevation: 4,
                shadowColor: const Color(0xFF6366F1).withOpacity(0.4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F172A), // Deep Slate
              Color(0xFF020617), // Rich Dark Blue
              Color(0xFF0B132B), // Modern Indigo hint
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 30.0,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: isDesktop ? _buildDesktopLayout() : _buildMobileLayout(),
            ),
          ),
        ),
      ),
    );
  }

  // DESKTOP LAYOUT (Split screens)
  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column: Profile Card (Fixed Width)
        SizedBox(width: 360, child: _buildProfileCard()),
        const SizedBox(width: 32),
        // Right Column: Navigation and Tab Content (Flexible)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTabs(),
              const SizedBox(height: 24),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _buildActiveTabContent(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // MOBILE LAYOUT (Stacked)
  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildProfileCard(),
        const SizedBox(height: 28),
        _buildTabs(),
        const SizedBox(height: 24),
        _buildActiveTabContent(),
      ],
    );
  }

  // MAIN CARD: Profile and contact details
  Widget _buildProfileCard() {
    return Container(
      padding: const EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        color: const Color(
          0xFF1E293B,
        ).withOpacity(0.6), // Slate-800 glass effect
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFF334155).withOpacity(0.6),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image with Double-ring Gradient Border
          Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFF6366F1), Color(0xFF06B6D4)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF1E293B),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback to Icon if image asset fails loading
                    return const Center(
                      child: Icon(
                        Icons.person,
                        size: 70,
                        color: Color(0xFF06B6D4),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Name
          Text(
            'Alex Rivera',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          // Profession Designation
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF06B6D4).withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Creative Technologist',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF22D3EE),
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Short Biography
          const Text(
            'Designing and engineering stunning cross-platform apps. Merging aesthetics with clean performance systems.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.5,
              color: Color(0xFF94A3B8),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),
          const Divider(color: Color(0xFF334155), thickness: 1),
          const SizedBox(height: 16),
          // Contact Details
          _buildContactInfoTile(Icons.mail_outline, 'alex.rivera@dev.io'),
          _buildContactInfoTile(
            Icons.location_on_outlined,
            'San Francisco, CA',
          ),
          _buildContactInfoTile(Icons.link_outlined, 'alexrivera.dev'),
          const SizedBox(height: 20),
          // Action button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _copyEmail,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E293B),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFF475569)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _emailCopied ? Icons.check : Icons.copy,
                    size: 16,
                    color: _emailCopied
                        ? const Color(0xFF10B981)
                        : Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(_emailCopied ? 'Copied!' : 'Copy Email Address'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // TILE FOR CONTACT INFO
  Widget _buildContactInfoTile(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 16, color: const Color(0xFF6366F1)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13.5,
                color: Colors.white24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // TABS CONTROLLER HEADER
  Widget _buildTabs() {
    final tabs = ['About', 'Skills', 'Experience', 'Connect'];
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B).withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF334155).withOpacity(0.8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(tabs.length, (index) {
          final isSelected = _activeTab == index;
          return Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _activeTab = index;
                });
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  gradient: isSelected
                      ? const LinearGradient(
                          colors: [Color(0xFF6366F1), Color(0xFF06B6D4)],
                        )
                      : null,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    tabs[index],
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFF94A3B8),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  // CONTENT FOR TABS SWITCHER
  Widget _buildActiveTabContent() {
    switch (_activeTab) {
      case 0:
        return _buildAboutTab();
      case 1:
        return _buildSkillsTab();
      case 2:
        return _buildExperienceTab();
      case 3:
        return _buildConnectTab();
      default:
        return _buildAboutTab();
    }
  }

  // TAB 1: ABOUT
  Widget _buildAboutTab() {
    return Container(
      key: const ValueKey('about'),
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
              Expanded(child: _buildMetricCard('5+', 'Years Exp')),
              const SizedBox(width: 12),
              Expanded(child: _buildMetricCard('30+', 'Shipped Apps')),
              const SizedBox(width: 12),
              Expanded(child: _buildMetricCard('100%', 'Client Love')),
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
            style: const TextStyle(fontSize: 11, color: Color(0xFF94A3B8)),
          ),
        ],
      ),
    );
  }

  // TAB 2: SKILLS
  Widget _buildSkillsTab() {
    return Container(
      key: const ValueKey('skills'),
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
            'Core Competencies & Stack',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          _buildSkillTile('Flutter & Dart Framework', 'Expert', 0.95),
          _buildSkillTile(
            'UI/UX Prototyping & Motion Design',
            'Advanced',
            0.88,
          ),
          _buildSkillTile('Web Stack (HTML, CSS, React, JS)', 'Advanced', 0.82),
          _buildSkillTile(
            'Backend Integrations (Node.js & Firebase)',
            'Intermediate',
            0.75,
          ),
          _buildSkillTile(
            'DevOps, CI/CD, Git Architecture',
            'Intermediate',
            0.70,
          ),
        ],
      ),
    );
  }

  Widget _buildSkillTile(String title, String rating, double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                rating,
                style: const TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF06B6D4),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 8,
                decoration: BoxDecoration(
                  color: const Color(0xFF334155),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    height: 8,
                    width: constraints.maxWidth * progress,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6366F1), Color(0xFF06B6D4)],
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // TAB 3: EXPERIENCE
  Widget _buildExperienceTab() {
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
          _buildExperienceTimelineItem(
            role: 'Lead Mobile Engineer',
            company: 'TechVanguard Inc, San Francisco',
            period: '2024 - Present',
            description:
                'Architecting flagship enterprise cross-platform applications in Flutter, improving rendering efficiency by 30% and coordinating development cycles with the engineering team.',
          ),
          _buildExperienceTimelineItem(
            role: 'Senior Flutter Developer',
            company: 'DesignCraft Studio, NYC',
            period: '2021 - 2024',
            description:
                'Created highly customized animated interactions and responsive layouts for complex web and mobile apps. Maintained modular design tokens across projects.',
          ),
          _buildExperienceTimelineItem(
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

  Widget _buildExperienceTimelineItem({
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
                  ),
                ],
              ),
            ),
            Container(width: 2, height: 100, color: const Color(0xFF334155)),
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

  // TAB 4: CONNECT / SOCIALS
  Widget _buildConnectTab() {
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
          _buildSocialButton(
            icon: Icons.code,
            platform: 'GitHub',
            username: '@alexriveradev',
            accentColor: Colors.white,
          ),
          const SizedBox(height: 12),
          _buildSocialButton(
            icon: Icons.work_outline,
            platform: 'LinkedIn',
            username: 'in/alexrivera',
            accentColor: const Color(0xFF0077B5),
          ),
          const SizedBox(height: 12),
          _buildSocialButton(
            icon: Icons.chat_bubble_outline,
            platform: 'Twitter / X',
            username: '@alexriveradev',
            accentColor: const Color(0xFF1DA1F2),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required String platform,
    required String username,
    required Color accentColor,
  }) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Navigating to $platform profile ($username)...'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: const Color(0xFF6366F1),
          ),
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF0F172A).withOpacity(0.8),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFF334155).withOpacity(0.5)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: accentColor, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    platform,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 12.5,
                      color: Color(0xFF94A3B8),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF475569),
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
