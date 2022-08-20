import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/pages/home/descreption/descreption.dart';

class Cardinside extends StatelessWidget {
  const Cardinside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png'),
              ),
            ),
            const Text(
              '   Flutter Developer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.17,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.height * 0.02,
              color: const Color(0xFF9796f0),
              child: const Text(
                '  2 days',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Divider(
            thickness: 3,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Min. Experience',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Text('9 - 10 lack',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 35, left: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('1 year',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF9796f0),
                ),
                onPressed: () {
                  Get.to(const JobDetail());
                },
                child: Text('details'.toUpperCase()),
              )
            ],
          ),
        ),
      ],
    );
  }
}
