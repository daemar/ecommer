import 'package:ecommer/scr/controller/barbottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabButtonPersonalize extends StatelessWidget {
  final List viewoption;
  final List textbutton;
  const TabButtonPersonalize(
      {super.key, required this.viewoption, required this.textbutton});

  @override
  Widget build(BuildContext context) {
    final barBottomProvider = Provider.of<BarbottomProvider>(context);
    //final currentIndex = barBottomProvider.selectedMenuOpt;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 45,
          child: Padding(
            padding: const EdgeInsets.only(left: 100),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: viewoption.length,
              itemBuilder: (_, index) {
                return ElevatedButton(
                    onPressed: () {
                      barBottomProvider.selectedMenuOpt = index;
                    },
                    child: Text(textbutton[index]));
              },
            ),
          ),
        ),
        viewoption[barBottomProvider.selectedMenuOpt],
      ],
    );
  }
}
