import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/component/ComponentItem.dart';
import 'package:hotelszone_flutter/component/contentRating.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Star Rating",
              style: TextStyle(color: kCyanSecondaryColor, fontSize: 16),
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: kCyanSecondaryColor,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ContentRating(),
              ContentRating(),
              ContentRating(),
              ContentRating(),
            ])),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Price Range",
              style: TextStyle(color: kCyanSecondaryColor, fontSize: 16),
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: kCyanSecondaryColor,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                width: 160,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(width: 0.4, color: kCyanSecondaryColor)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Form",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                width: 160,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(width: 0.4, color: kCyanSecondaryColor)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Form",
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Cancellation Policy",
              style: TextStyle(color: kCyanSecondaryColor, fontSize: 16),
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: kCyanSecondaryColor,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        CheckboxListTile(
          activeColor: kCyanSecondaryColor,
          checkColor: kCyanSecondaryColor,
          title: Text(
            "Free Cancellation ",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
          ),
          value: false,
          onChanged: (newValue) {},
          controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Location Near",
              style: TextStyle(color: kCyanSecondaryColor, fontSize: 16),
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: kCyanSecondaryColor,
            ),
            SizedBox(
              width: 20,
            )
          ],
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
        SizedBox(
          height: 30,
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
                        "Apply All",
                        style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {}),
                ),
                SizedBox(
                  width: 24,
                ),
                ComponentItem(
                  iconData: Icons.delete_forever,
                  string: "Delete all filters",
                  isActive: false,
                )
              ],
            ))
      ],
    );
  }
}
