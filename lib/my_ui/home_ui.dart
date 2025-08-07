import 'package:flutter/material.dart';
import 'meetings_ui.dart';
import 'saved_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int _selectedIndex = 0;

  // Pages for each navigation item
  final List<Widget> _pages = [
    const MeetingsUi(), // New Meeting button opens meetings_ui.dart
    const SavedUi(), // Meeting button opens saved_ui.dart
    const Center(
      child: Text(
        'Contact Page',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'Logout Page',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.comment_bank, 'New Meeting', 0),
            _buildNavItem(Icons.lock_clock, 'Meetings', 1),
            _buildNavItem(Icons.person_outline, 'Contact', 2),
            _buildNavItem(Icons.logout, 'Logout', 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.blue : Colors.white),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
