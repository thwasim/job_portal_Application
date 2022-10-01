// import 'dart:developer';

// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:second_project/pages/profileedit/education/controller/educationcontroller.dart';

// // ignore: must_be_immutable
// class EducationLevels extends StatelessWidget {
//   EducationLevels({Key? key}) : super(key: key);

//   final List<String> educationlevel = [
//     'PLUS TWO',
//     "First University Degree (Bachelor's)",
//     "University Degree (Engineering & Technology)",
//     "Second University Degree (Master's)",
//     "Doctoral Degree",
//     "OTHER"
//   ];
//   final List<String> educationcourse = [
//     "State syllabus",
//     "Central Board of Secondary Education.CBSE",
//     "Other"
//   ];
//   final List<String> educationspecialisation = [
//     "Management MBA/BBA",
//     "Engineering B.Tech and B.Arch, M.Tech, ME, BE",
//     "Computer Application-BCA/MCA",
//     "Designing - Fashion/Interior/Web",
//     "Mass-communication/Journalism BJMC",
//     "Hospitality (Hotel) - Hotel Management",
//     "Medical-BDS and MBBS",
//     "Finance -B.Com/CA",
//     "Arts Psychology and Sociology",
//     "Law B.ALLB/LLB",
//     "Education Teaching-B.Ed/M.Ed",
//     "Pharmacy B.Pharma/M.Pharma",
//     "Tourism management - B.Sc.",
//     "Fine Arts B.F.A",
//     "Nursing B.Sc. and M.Sc. in Nursing",
//     "DIPLOMA IN TEACHER EDUCATION [D.T.ED]",
//     " National Institutes of Technology (NITs)",
//     "Other"
//   ];

//   String? selectedValue;

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 236, 210, 134),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 80),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               DropdownButtonFormField2(
//                 searchController: context.watch<EducationLevelsController>().educationLevelController,
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   isDense: true,
//                   contentPadding: EdgeInsets.zero,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 isExpanded: true,
//                 hint: const Text(
//                   'Education Level',
//                   style: TextStyle(fontSize: 17),
//                 ),
//                 icon: const Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.black45,
//                 ),
//                 iconSize: 30,
//                 buttonHeight: 70,
//                 buttonPadding: const EdgeInsets.only(left: 20, right: 10),
//                 dropdownDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 items: educationlevel
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ))
//                     .toList(),
//                 validator: (value) {
//                   if (value == null) {
//                     return 'Please select Education Level';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   //Do something when changing the item if you want.
//                 },
//                 onSaved: (value) {
//                   selectedValue = value.toString();
//                 },
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               DropdownButtonFormField2(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   isDense: true,
//                   contentPadding: EdgeInsets.zero,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 isExpanded: true,
//                 hint: const Text(
//                   'Education Course',
//                   style: TextStyle(fontSize: 17),
//                 ),
//                 icon: const Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.black45,
//                 ),
//                 iconSize: 30,
//                 buttonHeight: 70,
//                 buttonPadding: const EdgeInsets.only(left: 20, right: 10),
//                 dropdownDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 items: educationcourse
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ))
//                     .toList(),
//                 validator: (value) {
//                   if (value == null) {
//                     return 'Please select Education Course';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   //Do something when changing the item if you want.
//                 },
//                 onSaved: (value) {
//                   selectedValue = value.toString();
//                 },
//               ),
//               const SizedBox(height: 50),
//               DropdownButtonFormField2(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   isDense: true,
//                   contentPadding: EdgeInsets.zero,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 isExpanded: true,
//                 hint: const Text(
//                   'Education Specialisation',
//                   style: TextStyle(fontSize: 17),
//                 ),
//                 icon: const Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.black45,
//                 ),
//                 iconSize: 30,
//                 buttonHeight: 70,
//                 buttonWidth: 300,
//                 buttonPadding: const EdgeInsets.only(left: 20, right: 10),
//                 dropdownDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 items: educationspecialisation
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ))
//                     .toList(),
//                 validator: (value) {
//                   if (value == null) {
//                     return 'Please select Education Specialisution';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {},
//                 onSaved: (value) {
//                   selectedValue = value.toString();
//                 },
//               ),
//               const SizedBox(height: 30),
//               TextButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     log("message");
//                     context.read<EducationLevelsController>().educationlevelfunction(context);
                    
//                   }
//                 },
//                 child: const Text('Submit Details'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
