import 'package:flutter/material.dart';
import 'package:second_project/pages/home/descreption/descreptionfunction.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.88,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 239, 206, 108),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
            ),
            Positioned(
              top: 60,
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon:const Icon(Icons.arrow_back_ios))),
            Positioned(
              top: 80.0,
              left: 100.0,
              right: 100.0,
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/google.png",
                      width: MediaQuery.of(context).size.height*0.1,
                    ),
                  ),
                  const Text(
                    "Google Ptd",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 270,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: [
                  const Text(
                    "Flutter Developer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Colors.black,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: buildRequirements(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 130,
              left: 100.0,
              right: 100.0,
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  width: 150.0,
                  height: 55.0,
                  padding: const EdgeInsets.only(left: 40.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Row(
                    children:  [
                     const Text(
                        "APPLY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.16),
                     const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 28.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> buildRequirements() {
  List<Widget> list = [];
  for (var i = 0; i < getJobsRequirements().length; i++) {
    list.add(buildRequirement(getJobsRequirements()[i]));
  }
  return list;
}

Widget buildRequirement(String requirement) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(
            requirement,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
