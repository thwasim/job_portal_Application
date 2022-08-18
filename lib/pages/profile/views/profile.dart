import 'package:flutter/material.dart';
import 'package:second_project/pages/profile/views/profileadress.dart';
import 'package:second_project/pages/profile/views/profiledetials.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://wp-mktg.prod.getty1.net/istockcontentredesign/wp-content/uploads/sites/5/2020/06/2021_whatarevectorgraphics_hero.jpg'),
                    fit: BoxFit.fill),
              ),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Container(
                  alignment: const Alignment(0.0, 3.2),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://thumbs.dreamstime.com/b/abstract-graphics-render-1705596.jpg"),
                    radius: 70,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height:  MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(offset: Offset(9, 9), blurRadius: 10),
                        ],
                        borderRadius: BorderRadius.circular(26),
                       color: const Color.fromARGB(255, 117, 114, 113),),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit,color: Colors.white,)),
                        ],),
                       
                        const KeyValue(name: 'Basith Usman', title: 'Name:                  '),
                        const KeyValue(name: 'Basi@gmail.com', title: 'Email:             '),
                        const KeyValue(name: 'kochi           ', title: 'Location:                 '),
                        const KeyValue(name: '+91 9876543456', title: 'Number:       '),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ProfileDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
