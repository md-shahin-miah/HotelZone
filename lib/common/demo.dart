// import 'package:easy_debounce/easy_debounce.dart';
// import 'package:firefly_app/Provider/LocationProvider/location_Provider.dart';
// import 'package:firefly_app/Provider/NewsFeedProvider/News_Feed_Provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';
// import '../Widget/Drawer_widget.dart';
// import '../constant.dart';
// import 'component/Recent_product_list.dart';
//
//
//
// class NewsFeedScreen extends StatefulWidget {
//   @override
//   _NewsFeedScreenState createState() => _NewsFeedScreenState();
// }
//
// class _NewsFeedScreenState extends State<NewsFeedScreen> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   Divisions _myState;
//
//   Districts _mydistricts;
//   Upazilas _myupazilas;
//   String _myareas;
//   cateItem selectedUser;
//   String cateNameId = "1";
//
//   int currentTab = 0;
//   String data;
//   String location = "";
//   int _page = 1;
//   ScrollController controller = new ScrollController();
//
//
//   void calculateLocation(List<Address> address) {
//
//
//     try{
//       if (Constant.myDivisions.isNotEmpty) {
//         address[0].divisions.forEach((element) {
//           if (Constant.myDivisions == element.name) {
//             _myState = element;
//
//             if (Constant.myDistricts.isNotEmpty) {
//               _myState.districts.forEach((element) {
//                 if (Constant.myDistricts == element.name) {
//                   _mydistricts = element;
//
//                   if (Constant.myUpazilas.isNotEmpty) {
//                     _mydistricts.upazilas.forEach((element) {
//                       if (Constant.myUpazilas == element.name) {
//                         _myupazilas = element;
//
//                         if (Constant.myAreas.isNotEmpty) {
//                           _myupazilas.areas.forEach((element) {
//                             if (Constant.myUpazilas == element) {
//                               _myareas = element;
//                             }
//                           });
//                         }
//
//                       }
//                     });
//                   }
//
//                 }
//               });
//             }
//
//
//           }
//         });
//       }
//     }catch(e){
//       print(e.toString());
//     }
//
//
//
//   }
//
//
//   @override
//   void initState() {
//     super.initState();
//     controller.addListener(_scrollListener);
//   }
//
//   void _scrollListener() {
//     print(controller.position.extentAfter);
//     if (controller.position.pixels == controller.position.maxScrollExtent) {
//       final  prov = Provider.of<NewsFeedProvider>(context, listen: false);
//
//       if (!prov.isEmpty) {
//         _page++;
//         prov.setLoading();
//         prov.newsFeedsGet(_page, cateNameId);
//       } else {
//         Fluttertoast.showToast(msg: "No Data available");
//       }
//     }
//   }
//
//   @override
//   void dispose() {
//     controller.removeListener(_scrollListener);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final categoryGet = Provider.of<NewsFeedProvider>(context);
//
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       endDrawer: drawerScreen(context),
//       key: _scaffoldKey,
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.only(left: 15, right: 15),
//           child: SingleChildScrollView(
//             controller: controller,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 18,
//                 ),
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Container(
//                           padding: EdgeInsets.all(3),
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(10),
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10),
//                               ),
//                               border: Border.all(
//                                   width: 0.5, color: Colors.black12)),
//                           child: Icon(
//                             Icons.arrow_back_ios_outlined,
//                           ),
//                         ),
//                       ),
//                       Center(
//                         child: Container(
//                             child: Text(
//                               "Feed",
//                               style: TextStyle(color: Colors.black54, fontSize: 18),
//                             )),
//                       ),
//                       Container(
//                         child: IconButton(
//                           onPressed: () =>
//                               _scaffoldKey.currentState.openEndDrawer(),
//                           icon: Icon(Icons.menu),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   height: 60,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
//                       bottomLeft: Radius.circular(10),
//                       bottomRight: Radius.circular(10),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 250,
//                         child: TextField(
//                             onChanged: (text){
//                               EasyDebounce.debounce(
//                                 text,                 // <-- An ID for this particular debouncer
//                                 Duration(milliseconds: 500),    // <-- The debounce duration
//                                     () => categoryGet.searchProduct(text),                // <-- The target method
//                               );
//
//                             },
//                             keyboardType: TextInputType.text,
//                             decoration: InputDecoration(
//                               hintText: "Search with vendor name",
//                               border: InputBorder.none,
//                               focusedBorder: InputBorder.none,
//                               enabledBorder: InputBorder.none,
//                               errorBorder: InputBorder.none,
//                               disabledBorder: InputBorder.none,
//                             )),
//                       ),
//                       GestureDetector(
//                           onTap: () {},
//                           child: Icon(
//                             Icons.search,
//                             color: Colors.black54,
//                           ))
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: GestureDetector(
//                           onTap: () {
//                             _bottomSheet(context);
//                             // Get.to(() => LocationScreen());
//                             //Get.to(LocationScreen());
//                           },
//                           child: Container(
//                             margin: EdgeInsets.only(right: 14),
//                             padding: EdgeInsets.all(7),
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: kPrimaryColor,
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(10),
//                                   topRight: Radius.circular(10),
//                                   bottomLeft: Radius.circular(10),
//                                   bottomRight: Radius.circular(10)),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Location",
//                                 style: TextStyle(color: Colors.white,fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           padding: EdgeInsets.all(7),
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(10),
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10)),
//                           ),
//                           child: Center(
//                             child: Container(
//                               child: Center(
//                                 child: FittedBox(
//                                   fit: BoxFit.cover,
//                                   child: DropdownButton<cateItem>(
//                                     value: selectedUser,
//
//                                     hint: Text("Select item",overflow: TextOverflow.ellipsis,),
//                                     icon: Icon(Icons.arrow_drop_down),
//                                     iconSize: 24,
//
//                                     elevation: 16,
//                                     style: TextStyle(
//                                         color: Colors.black54, fontSize: 16.5),
//                                     underline: Container(
//                                       color: Colors.black54,
//                                     ),
//                                     onChanged: (cateItem value) {
//
//                                       setState(() {
//                                         categoryGet.isShe = false;
//                                         selectedUser = value;
//                                         print(selectedUser.name);
//                                         cateNameId = selectedUser.id;
//                                         categoryGet.newsFeedsGet(
//                                             1, selectedUser.id);
//                                         if (categoryGet.dataLoad == true) {
//                                           Fluttertoast.showToast(
//                                               msg: "Data not Found");
//                                         }
//                                         // productList.productListGet(selectedUser.id);
//                                       });
//                                     },
//                                     items: cateList.map((cateItem user) {
//                                       return DropdownMenuItem<cateItem>(
//                                         value: user,
//                                         child: Text(
//                                           user.name,
//                                           overflow: TextOverflow.ellipsis,
//                                           style:
//                                           TextStyle(color: Colors.black),
//                                         ),
//                                       );
//                                     }).toList(),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 categoryGet.isShe == false
//                     ? Center(
//                   child: CircularProgressIndicator(),
//                 )
//                     : RecentProductList(),
//                 Container(height: 60, child: getLoader()),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   _bottomSheet(context) {
//     showModalBottomSheet(
//         context: context,
//         isDismissible: false,
//         enableDrag: false,
//         builder: (context) {
//           return Consumer<LocationProvider>(builder: (context, data, _) {
//             final categoryGet = Provider.of<NewsFeedProvider>(context);
//             calculateLocation(data.getNewLocationList);
//             return StatefulBuilder(
//                 builder: (BuildContext context, StateSetter setState
//                     /*You can rename this!*/) {
//                   return Container(
//                     margin: EdgeInsets.only(left: 15, right: 15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                         )),
//                     child: ListView(
//                       children: [
//                         ListView.builder(
//                           shrinkWrap: true,
//                           scrollDirection: Axis.vertical,
//                           itemCount: data.getNewLocationList.length,
//                           itemBuilder: (context, int index) {
//                             return Column(
//                               children: [
//                                 SizedBox(
//                                   height: 25,
//                                 ),
//                                 Text(
//                                   "Select your location",
//                                   style: TextStyle(fontSize: 17),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//
//                                 Row(
//                                   children: [
//                                     Expanded(
//                                         child: Container(
//                                           child: Text(
//                                             "Select divisions",
//                                             style: TextStyle(fontSize: 17),
//                                           ),
//                                         )),
//                                     DropdownButton<Divisions>(
//                                       items: data.getNewLocationList[0].divisions
//                                           .map((e) => DropdownMenuItem<Divisions>(
//                                           value: e, child: Text(e.name)))
//                                           .toList(),
//                                       onChanged: (Divisions value) {
//                                         setState(() {
//                                           _myState = value;
//                                           saveDivisions(
//                                               _myState.name.toString());
//                                           getDivisions();
//                                           _mydistricts = null;
//                                           _myupazilas = null;
//                                           _myareas = null;
//                                           print("myDivisions______________${Constant.myDivisions}");
//                                         });
//                                       },
//                                       value: _myState,
//                                       hint: Text(Constant.myDivisions),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//
//                                 _myState == null
//                                     ? Container()
//                                     : Row(
//                                   children: [
//                                     Expanded(
//                                         child: Container(
//                                           child: Text(
//                                             "Select districts",
//                                             style: TextStyle(fontSize: 17),
//                                           ),
//                                         )),
//                                     DropdownButton<Districts>(
//                                       items: _myState.districts.map((item) {
//                                         return DropdownMenuItem<Districts>(
//                                             value: item,
//                                             child: Text(item.name));
//                                       }).toList(),
//                                       onChanged: (Districts newVal) {
//                                         setState(() {
//                                           _mydistricts = newVal;
//                                           saveDistricts(
//                                               _mydistricts.name.toString());
//                                           getDistricts();
//                                           _myupazilas = null;
//                                           _myareas = null;
//                                           print("myDistricts______________${Constant.myDistricts}");
//                                         });
//
//                                         print(_mydistricts);
//                                       },
//                                       value: _mydistricts,
//                                       hint: Text(Constant.myDistricts),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 //
//                                 _mydistricts == null
//                                     ? Container()
//                                     : Row(
//                                   children: [
//                                     Expanded(
//                                         child: Container(
//                                           child: Text(
//                                             "Select upazilas ",
//                                             style: TextStyle(fontSize: 17),
//                                           ),
//                                         )),
//                                     DropdownButton<Upazilas>(
//                                       items:
//                                       _mydistricts.upazilas.map((item) {
//                                         return DropdownMenuItem(
//                                             value: item,
//                                             child: Text(item.name));
//                                       }).toList(),
//                                       onChanged: (newVal) {
//                                         setState(() {
//                                           _myupazilas = newVal;
//                                           saveUpazilas(
//                                               _myupazilas.name.toString());
//                                           getUpazilas();
//                                           print("myUpazilas______________${Constant.myUpazilas}");
//                                           _myareas=null;
//                                         });
//                                       },
//                                       value: _myupazilas,
//                                       hint: Text(Constant.myUpazilas),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//
//                                 _myupazilas == null
//                                     ? Container()
//                                     : Row(
//                                   children: [
//                                     Expanded(
//                                         child: Container(
//                                           child: Text(
//                                             "Select areas ",
//                                             style: TextStyle(fontSize: 17),
//                                           ),
//                                         )),
//                                     DropdownButton<String>(
//                                       hint: Text(Constant.myAreas),
//                                       items: _myupazilas.areas.map(
//                                             (e) {
//                                           return DropdownMenuItem(
//                                             value: e,
//                                             child: Text(e),
//                                           );
//                                         },
//                                       ).toList(),
//                                       onChanged: (newVal) {
//                                         setState(() {
//                                           _myareas = newVal;
//                                           saveAreas(_myareas.toString());
//
//                                           getAreas();
//                                           print("myAreas______${Constant.myAreas}");
//                                         });
//                                       },
//                                       value: _myareas,
//                                     ),
//                                   ],
//                                 ),
//
//                                 SizedBox(height: 25,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       width: 250,
//                                       height: 50,
//                                       decoration: BoxDecoration(
//                                           color: Colors.purple,
//                                           borderRadius:
//                                           BorderRadius.all(Radius.circular(7))),
//                                       child: TextButton(
//                                           onPressed: () {
//                                             if (
//                                             // _myState == null &&
//                                             //     _mydistricts == null &&
//                                             //     _myupazilas == null &&
//                                             _myareas == null) {
//                                               Fluttertoast.showToast(
//                                                   msg: "please select location",
//                                                   toastLength: Toast.LENGTH_LONG);
//                                             } else {
//                                               // Constant.myDivisions=_myState as String;
//
//                                               setState(() {
//                                                 print(_myState.name.toString());
//                                                 // saveDivisions(
//                                                 //     _myState.name.toString());
//                                                 // saveDistricts(
//                                                 //     _mydistricts.name.toString());
//                                                 // saveUpazilas(
//                                                 //     _myupazilas.name.toString());
//                                                 // saveAreas(_myareas.toString());
//                                                 //  print(selectedUser.name);
//                                                 getDivisions();
//                                                 getDistricts();
//                                                 getUpazilas();
//                                                 getAreas();
//
//                                                 print("___1jdhgsa___${_myState.name.toString()}${ _mydistricts.name.toString()},${_myupazilas.name.toString()},${_myareas.toString()}");
//                                                 categoryGet.newsFeedsGet(
//                                                     1, cateNameId);
//                                                 categoryGet.isShe = false;
//                                                 print("_________2");
//
//                                                 if (categoryGet.dataLoad == true) {
//                                                   Fluttertoast.showToast(
//                                                       msg: "Data not Found");
//                                                 }
//
//                                               });
//                                               Fluttertoast.showToast(
//                                                   msg: "Location Saved",
//                                                   toastLength: Toast.LENGTH_LONG);
//                                               Navigator.of(context).pop();
//                                             }
//                                           },
//                                           child: Text(
//                                             "Done",
//                                             style: TextStyle(color: Colors.white),
//                                           )),
//                                     )
//                                   ],
//                                 ),
//                                 SizedBox(height: 25,),
//                               ],
//                             );
//                           },
//                         )
//                       ],
//                     ),
//                   );
//                 });
//           });
//         });
//   }
//
//   getLoader() {
//     return Consumer<NewsFeedProvider>(
//         builder: (ctx, data, _) => data.pageLoad
//             ? Center(child: CircularProgressIndicator())
//             : Container());
//   }
//
//   Widget AlertDialogLocation() {
//     return Container(
//       height: 470,
//       color: Colors.black87,
//     );
//   }
// }