import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';

// ignore: must_be_immutable
class CustomNavegatorbarBottom extends StatelessWidget {
  const CustomNavegatorbarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    /* final List<Widget> pageOptions = [
      const NotificationPage(),
      const AccountPage(),
      const HomeArticuloPage(),
    ]; */
    final barBottomProvider = Provider.of<BarbottomProvider>(context);
    int currentIndex = barBottomProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (i) => barBottomProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      selectedIconTheme: const IconThemeData(color: Colors.teal),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 3, 181, 204),
              child: Icon(Icons.home, color: Colors.white)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: '',
        )
      ],
    );
  }
}
