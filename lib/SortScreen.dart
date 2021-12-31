import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/component/ComponentItem.dart';

import 'conf/app_config.dart';

class SortScreen extends StatelessWidget {


@override
  Widget build(BuildContext context) {
  return Column(
    children: [

      SizedBox(
        height: 40,
      ),

      Container(
        child: Row(
          children: [
            Expanded(
                child: CheckboxListTile(
                  activeColor: kCyanSecondaryColor,
                  checkColor: kCyanSecondaryColor,
                  title: Text(
                    "Eiffel tower",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (newValue) {},
                  controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                )),
            Expanded(
                child: CheckboxListTile(
                  activeColor: kCyanSecondaryColor,
                  checkColor: kCyanSecondaryColor,
                  title: Text(
                    "DisneyLand ",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (newValue) {},
                  controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                ))
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
            Expanded(
                child: CheckboxListTile(
                  activeColor: kCyanSecondaryColor,
                  checkColor: kCyanSecondaryColor,
                  title: Text(
                    "Eiffel tower",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (newValue) {},
                  controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                )),
            Expanded(
                child: CheckboxListTile(
                  activeColor: kCyanSecondaryColor,
                  checkColor: kCyanSecondaryColor,
                  title: Text(
                    "DisneyLand ",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (newValue) {},
                  controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                ))
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
            Expanded(
                child: CheckboxListTile(
                  activeColor: kCyanSecondaryColor,
                  checkColor: kCyanSecondaryColor,
                  title: Text(
                    "Eiffel tower",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (newValue) {},
                  controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                )),
            Expanded(
                child: Container())
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                height: 50,
                width: 140,
                child: RaisedButton(
                    color: kRedPrimaryColor,
                    child: Text(
                      "Sort",
                      style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                    onPressed: () {}),
              ),
              SizedBox(
                width: 24,
              ),
              ComponentItem(iconData: Icons.delete_forever, string: "Delete",isActive: false,)
            ],
          ))

    ],
  );
  }






}


