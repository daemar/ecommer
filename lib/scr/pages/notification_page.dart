import 'package:ecommer/scr/widgets/notify_detail.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Column(children: [
            //Text de Busqueda
            const TextFieldSearch(),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Dismissible(
                        key: UniqueKey(),
                        background: Container(
                          color: Colors.red,
                          child: const Icon(Icons.delete_outline,
                              color: Colors.white),
                        ),
                        onDismissed: (DismissDirection direction) {
                          // scanListProvider.borrarScanporId(scan[i].id);
                        },
                        child: const NotifyDetail(
                          title: 'Aliquip sunt est tempor culpa dolor dolore.',
                          subtitle: '32 min',
                          image: 'assets/ropa2.jpg',
                          read: true,
                          notify: true,
                        )),
                  );
                },
              ),
            ),
          ])
        ]))
      ]),
    );
  }
}
