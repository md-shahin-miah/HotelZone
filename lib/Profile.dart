import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'conf/app_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: colorProfile,
        body: Container(
      color: kPrimaryColor,
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
                leading: Image.asset("assets/images/hzzone.png"),
                trailing: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            ListTile(
              horizontalTitleGap: 10.0,
              leading: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                    "assets/images/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position.jpg"),
              ),
              title: Text(
                "James McAvoy",
                style: TextStyle(fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('3251 Booking',
                    style:
                        TextStyle(fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),

            SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.person_pin,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Edit Account",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.contact_support,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Contact Us",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Privacy Policy",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Terms Of Use",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Settings",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.star_rate,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Rate App",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Share App",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Log Out",
                      style: TextStyle(
                          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
