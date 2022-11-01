import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';
import 'package:ecommer/scr/pages/pages.dart';
import 'package:ecommer/scr/widgets/widget.dart';

class MenuOptionBottom extends StatelessWidget {
  //CustombarController custombarcontroller = Get.put(CustombarController());
  const MenuOptionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    //final currentIndex = custombarcontroller.selectedMenuOpt.value;
    final List<Widget> pageOptions = [
      const NotificationPage(),
      const AccountPage(),
      const HomeArticuloPage(),
      const MessagePage(),
      const FavoritePage(),
    ];
    final barBottomProvider = Provider.of<BarbottomProvider>(context);
    final currentIndex = barBottomProvider.selectedMenuOpt;
    final namepage = barBottomProvider.namePage();
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: Icon(Icons.sort, color: Colors.teal.shade800),
        title: Text(
          namepage,
          style: TextStyle(color: Colors.teal.shade800),
        ),
        actions: [
          const CartAppBar(),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.teal.shade400,
              child: const Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: pageOptions[currentIndex],
      bottomNavigationBar: const CustomNavegatorbarBottom(),
    );
  }
}
