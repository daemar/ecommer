import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';
import 'package:ecommer/scr/pages/pages.dart';
import 'package:ecommer/scr/widgets/widget.dart';

class MenuOptionBottom extends StatelessWidget {
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
      const MyOrderPage(),
    ];
    //****************** VARIABLES BARBOTTOM*************************** */
    final barBottomProvider = Provider.of<BarbottomProvider>(context);
    final currentIndex = barBottomProvider.selectedMenuOpt;
    final namepage = barBottomProvider.namePage();
    //************************************************************** */
    return Scaffold(
      backgroundColor: Colors.grey[50],
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal[50]),
              accountName: Text(
                'Maria Eugenia Perez Pedrozo',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text('maria@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 30,
              )),
          const ItemsDrawer(
            icon: Icons.home_outlined,
            route: 2,
            title: 'Home',
          ),
          const ItemsDrawer(
            icon: Icons.notifications_active_outlined,
            route: 0,
            title: 'Notifications',
          ),
          const ItemsDrawer(
            icon: Icons.shopify,
            route: 5,
            title: 'My Orders',
            trailing: 8,
          ),
          const ItemsDrawer(
            icon: Icons.favorite_border,
            route: 4,
            title: 'Wish List',
          ),
          ListTile(
            leading: Text('Products',
                style: TextStyle(color: Colors.teal[900], fontSize: 12)),
          ),
          const ItemsDrawer(
            icon: Icons.folder_copy_outlined,
            route: 0,
            title: 'Categories',
          ),
          const ItemsDrawer(
            icon: Icons.folder_copy_outlined,
            route: 0,
            title: 'Brands',
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.sort),
            color: Colors.teal.shade800,
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
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
      bottomNavigationBar:
          currentIndex <= 4 ? const CustomNavegatorbarBottom() : null,
    );
  }
}
