

import 'package:flutter/material.dart';
import 'package:project134/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash(),

    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return _HomePage();
//   }
// }
//
// class _HomePage extends State<HomePage>{
//   TextEditingController dateinput = TextEditingController();
//   //text editing controller for text field
//
//   @override
//   void initState() {
//     dateinput.text = ""; //set the initial value of text field
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title:Text("DatePicker on TextField"),
//           backgroundColor: Colors.redAccent, //background color of app bar
//         ),
//         body:Container(
//             padding: EdgeInsets.all(15),
//             height:150,
//             child:Center(
//                 child:TextField(
//                   controller: dateinput, //editing controller of this TextField
//                   decoration: InputDecoration(
//                       icon: Icon(Icons.calendar_today), //icon of text field
//                       labelText: "Enter Date" //label text of field
//                   ),
//                   readOnly: true,  //set it true, so that user will not able to edit text
//                   onTap: () async {
//                     DateTime? pickedDate = await showDatePicker(
//                         context: context, initialDate: DateTime.now(),
//                         firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
//                         lastDate: DateTime(2101)
//                     );
//
//                     if(pickedDate != null ){
//                       print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
//                       String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
//                       print(formattedDate); //formatted date output using intl package =>  2021-03-16
//                       //you can implement different kind of Date Format here according to your requirement
//
//                       setState(() {
//                         dateinput.text = formattedDate; //set output date to TextField value.
//                       });
//                     }else{
//                       print("Date is not selected");
//                     }
//                   },
//                 )
//             )
//         )
//     );
//   }
// }
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Carousel Slider',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Carousel Slider Example'),
//         ),
//         body: CarouselSlider(
//           items: [
//             body: Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 16.0, right: 16),
//                 child: CustomScrollView(
//                     slivers: [SliverFillRemaining(
//                       hasScrollBody: false,
//                       child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             SizedBox(
//                               height: 70,
//                             ),
//
//                             Row(
//                               children: [
//                                 Text('Flex Options',
//                                     style: TextStyle(
//                                         fontSize: 22,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.black)),
//                                 SizedBox(
//                                   width: 170,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     // handle button press
//                                   },
//                                   child: Container(
//                                     width: 10,
//                                     height: 10,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.grey,
//                                     ),
//
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     // handle button press
//                                   },
//                                   child: Container(
//                                     width: 10,
//                                     height: 10,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.blue,
//                                     ),
//
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     // handle button press
//                                   },
//                                   child: Container(
//                                     width: 10,
//                                     height: 10,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.grey,
//                                     ),
//
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 12),
//
//                             Text('Job Type',
//                                 style: TextStyle(
//                                     fontWeight:FontWeight.w500,
//                                     fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
//                             SizedBox(
//                               height: 6,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right:50.0),
//                               child: Column(
//                                 //  crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     // mainAxisAlignment: MainAxisAlignment.start,
//                                     children: <Widget>[
//                                       Radio(
//                                         value: 1,
//                                         groupValue: id,
//                                         onChanged: (val) {
//                                           setState(() {
//                                             radioButtonItem = 'Contract';
//                                             id = 1;
//                                           });
//                                         },
//                                       ),
//
//                                       Text(
//                                         'Contract',
//                                         style: new TextStyle(fontSize: 17.0),
//                                       ),
//                                       SizedBox(
//                                           width:30
//                                       ),
//
//                                       Radio(
//                                         value: 2,
//                                         groupValue: id,
//                                         onChanged: (val) {
//                                           setState(() {
//                                             radioButtonItem = 'Part-Time';
//                                             id = 2;
//                                           });
//                                         },
//                                       ),
//                                       Text(
//                                         'Part-Time',
//                                         style: new TextStyle(
//                                           fontSize: 17.0,
//                                         ),
//                                       ),
//
//
//
//                                     ],
//
//                                   ),
//                                   Row(
//                                     children: [
//                                       Radio(
//                                         value: 3,
//                                         groupValue: id,
//                                         onChanged: (val) {
//                                           setState(() {
//                                             radioButtonItem = 'Full Time';
//                                             id = 3;
//                                           });
//                                         },
//                                       ),
//
//                                       Text(
//                                         'Full Time',
//                                         style: new TextStyle(fontSize: 17.0),
//                                       ),
//                                     ],
//                                   ),
//
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                               height: 12,
//                             ),
//                             Text('Job Location',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight:FontWeight.w500, color: Color.fromRGBO(19, 22, 30, 1))),
//                             SizedBox(
//                               height: 5,
//                             ),
//
//                             Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: <Widget>[
//                                     Radio(
//                                       value: 1,
//                                       groupValue: num,
//                                       onChanged: (val) {
//                                         setState(() {
//                                           radioButtonItem = 'At the office';
//                                           num=1;
//                                         });
//                                       },
//                                     ),
//                                     Text(
//                                       'At the office',
//                                       style: new TextStyle(fontSize: 17.0),
//                                     ),
//                                     SizedBox(
//                                         width:5
//                                     ),
//
//                                     Radio(
//                                       value: 2,
//                                       groupValue: num,
//                                       onChanged: (val) {
//                                         setState(() {
//                                           radioButtonItem = 'Remote';
//                                           num=2;
//                                         });
//                                       },
//                                     ),
//                                     Text(
//                                       'Remote',
//                                       style: new TextStyle(
//                                         fontSize: 17.0,
//                                       ),
//                                     ),
//
//
//
//                                   ],
//
//                                 ),
//                                 Row(
//                                   children: [
//                                     Radio(
//                                       value: 3,
//                                       groupValue: num,
//                                       onChanged: (val) {
//                                         setState(() {
//                                           radioButtonItem = 'Combination';
//                                           num=3;
//                                         });
//                                       },
//                                     ),
//
//                                     Text(
//                                       'Combination',
//                                       style: new TextStyle(fontSize: 17.0),
//                                     ),
//
//                                     Radio(
//                                       value: 4,
//                                       groupValue: num,
//                                       onChanged: (val) {
//                                         setState(() {
//                                           radioButtonItem = 'Unsure Right Now';
//                                           num=4;
//                                         });
//                                       },
//                                     ),
//
//                                     Text(
//                                       'Unsure Right Now',
//                                       style: new TextStyle(fontSize: 17.0),
//                                     ),
//                                   ],
//                                 ),
//
//                               ],
//                             ),
//
//                             SizedBox(
//                               height: 12,
//                             ),
//
//                             Text('Address',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
//                             SizedBox(
//                               height: 6,
//                             ),
//                             SizedBox(
//                               height: 45,
//                               width: 343,
//                               child: TextFormField(
//                                 decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Color.fromRGBO(201, 223, 218, 1),
//
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color.fromRGBO(201, 223, 218, 1),
//                                     ),
//                                     borderRadius: BorderRadius.circular(15.0),
//                                     //         borderRadius: BorderRadius.circular(15.0),
//                                   ),
//                                   hintText: "Enter Location",
//                                   contentPadding: EdgeInsets.only(top:17,left:14),
//                                   // Update the state i.e. toogle the state of passwordVisible variable
//                                 ),
//                               ),
//                             ),
//
//                             Expanded(
//                               child: Align(
//                                 alignment: Alignment.bottomCenter,
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       height: 45,
//                                       width: 175,
//                                       child: Padding(
//                                         padding: const EdgeInsets.only(right: 20.0),
//                                         child: ElevatedButton(
//                                           onPressed: () {
//                                             Navigator.pop(context);
//                                             // Navigator.push(
//                                             //   context,
//                                             //   MaterialPageRoute(builder: (context) => const ThirdPage()),
//                                             // );
//                                           },
//                                           child: Text(
//                                             "Back",
//                                             style: TextStyle(
//                                                 fontSize: 13,
//                                                 color: Color.fromRGBO(16, 95, 80, 1)),
//                                           ),
//                                           style: ElevatedButton.styleFrom(
//                                               backgroundColor: Color.fromRGBO(237, 249, 246, 1),
//                                               minimumSize: const Size.fromHeight(30),
//                                               fixedSize: const Size(177, 36),
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius: BorderRadius.circular(10),
//                                               )),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       height: 45,
//                                       width: 175,
//                                       child: Padding(
//                                         padding: const EdgeInsets.only(right: 20.0),
//                                         child: ElevatedButton(
//                                           onPressed: () {
//                                             Navigator.push(
//                                               context,
//                                               MaterialPageRoute(
//                                                   builder: (context) => const Compensation()),
//                                             );
//                                           },
//                                           child: Text(
//                                             "Continue",
//                                             style: TextStyle(
//                                               fontSize: 13,
//                                             ),
//                                           ),
//                                           style: ElevatedButton.styleFrom(
//                                               backgroundColor: Color.fromRGBO(16, 95, 80, 1),
//                                               minimumSize: const Size.fromHeight(30),
//                                               // fixedSize: const Size(177, 36),
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius: BorderRadius.circular(10),
//                                               )),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 24,
//                             ),
//                           ]
//                       ),
//                     )
//                     ]
//                 ),
//               ),
//             )
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text('iOS'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text('Desktop'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text('Web'),
//             )
//           ],
//           //Slider Container properties
//           options: CarouselOptions(
//             autoPlay: true,
//           ),
//         ),
//       ),
//     );
//   }
//}