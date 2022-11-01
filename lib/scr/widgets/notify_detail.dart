import 'package:flutter/material.dart';

class NotifyDetail extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool read;
  final bool notify;

  const NotifyDetail(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.read,
      required this.notify});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: read ? Colors.grey[50] : Colors.grey[200],
      child: ListTile(
        leading: notify
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(image),
                  height: 40,
                  width: 40,
                ),
              )
            : null,
        trailing: !notify
            ? CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              )
            : null,
        title: Text(title,
            style: TextStyle(
                color: Colors.cyan[900],
                fontWeight: !read ? FontWeight.bold : FontWeight.normal),
            overflow: TextOverflow.ellipsis),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
        //trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      ),
    );
  }
}
