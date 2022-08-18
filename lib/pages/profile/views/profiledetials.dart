import 'package:flutter/material.dart';
class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(offset: Offset(9, 9), blurRadius: 10),
              ],
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 117, 114, 113),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.14,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '  education and experience'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_calendar_sharp,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const Text(
                  'Uploaded 12/07/2004                                               ',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.14,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(offset: Offset(9, 9), blurRadius: 10),
            ],
            borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 117, 114, 113),
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.14,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.idownloadblog.com/wp-content/uploads/2016/04/52ff0e80b07d28b590bbc4b30befde52.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Please add your resume',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                      height: MediaQuery.of(context).size.height * 0.07,
                      color: const Color.fromARGB(255, 117, 114, 113),
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Icon(
                          Icons.upload_file_outlined,
                          color: Colors.white,
                        ),
                        const Text(
                          'Press to add',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 13,color: Colors.white),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
