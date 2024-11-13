import '../packages.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Homepage(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      
      bottomNavigationBar: NavigationBar(
        
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: (Icon(
              Icons.home,
              size: 25,
              color: AppColors.primary,
            )),
            icon: (Icon(
              Icons.home_outlined,
              size: 25,
              color: AppColors.grey,
            )),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: (Icon(
              Icons.person,
              color: AppColors.primary,
              size: 25,
            )),
            icon: Icon(
              Icons.person_outline,
              size: 25,
              color: AppColors.grey,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
