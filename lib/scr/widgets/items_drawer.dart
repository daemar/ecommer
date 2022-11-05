import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';

class ItemsDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final int? trailing;
  final int route;
  const ItemsDrawer(
      {super.key,
      required this.icon,
      required this.title,
      this.trailing,
      required this.route});

  @override
  Widget build(BuildContext context) {
    final barBottomProvider = Provider.of<BarbottomProvider>(context);

    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, 'bar');
        barBottomProvider.selectedMenuOpt = route;
      },
      leading: Icon(icon, color: Colors.grey),
      title: Text(title, style: TextStyle(color: Colors.teal[900])),
      trailing: trailing != null
          ? CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                backgroundColor: Colors.grey[50],
                radius: 15,
                child: Text(trailing.toString(),
                    style: const TextStyle(color: Colors.grey)),
              ),
            )
          : null,
    );
  }
}
