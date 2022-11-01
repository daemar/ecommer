import 'package:ecommer/scr/widgets/notify_detail.dart';
import 'package:ecommer/scr/widgets/subtitle_account.dart';
import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Column(children: [
          //Text de Busqueda
          const TextFieldSearch(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: NotifyDetail(
              title: 'Maria Eugenia Perez Pedrozo',
              subtitle: 'maria@gmail.com',
              image: 'assets/profile.jpg',
              notify: false,
              read: true,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  /* boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.5),
                          blurRadius: 10.0,
                        ),
                      ], */
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  IconwithTitle(icon: Icons.favorite_border, text: 'Wish List'),
                  IconwithTitle(icon: Icons.star_border, text: 'Following'),
                  IconwithTitle(icon: Icons.message_outlined, text: 'Messages'),
                ],
              )),

          //************ ACCOUNT MY ORDER ********** *****/
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                  /* boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.5),
                          blurRadius: 10.0,
                        ),
                      ], */
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  //****TITLE ORDER** */
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child: TitleIcon(
                      icon: Icons.bed_sharp,
                      title: 'My Orders',
                      option: "account".toUpperCase(),
                      secondtitle: "View all",
                    ),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: SubtitleAccount(
                              subtitle: 'Unpaid',
                              valor: '1',
                              option: 'Order'.toUpperCase()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //********************************** */

          //************ ACCOUNT PROFILE ********** *****/
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                decoration: BoxDecoration(
                    /*  boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.5),
                            blurRadius: 10.0,
                          ),
                        ], */
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    //***********TITLE PROFILE*************** */
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0),
                      child: TitleIcon(
                        icon: Icons.person_outline,
                        title: 'Profile Settings',
                        option: "account".toUpperCase(),
                        secondtitle: "Edit",
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.all(20),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: SubtitleAccount(
                                subtitle: 'Full name',
                                valor: 'Maria Sofia Espinoza Vendavides',
                                option: 'Profile'.toUpperCase()),
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ),
          //********************************** */
        ]),
      ),
    );
  }
}
