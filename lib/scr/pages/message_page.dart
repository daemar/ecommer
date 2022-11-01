import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFieldSearch(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        const Center(
            child: Icon(
          Icons.message,
          color: Colors.grey,
          size: 100,
        )),
      ],
    );
  }
}
