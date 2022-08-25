import 'package:flutter/material.dart';
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
                child: Image.asset(
                    'assets/google.png'),
              ),
            ),
            const Text(
              '   Flutter Developer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.17,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
              height: MediaQuery.of(context).size.height * 0.02,
              child: const Text(
                '2 days',
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
            children: [
              const Text('Min. Experience',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.28,
              ),
              const Text('9 - 10 lack',
                  style: TextStyle(
                    fontSize: 18,
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:  Colors.white,
                ),
                onPressed: () {
                  // Get.to(const JobDetails());
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>JobDetails()));
                },
                child: Text('details'.toUpperCase(),style: const TextStyle(color: Colors.black),),
              )
            ],
          ),
        ),
      ],
    );
  }
}
