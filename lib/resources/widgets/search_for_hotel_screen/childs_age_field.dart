import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelszone_flutter/common/utils/is_numeric_string.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:provider/provider.dart';

class ChildAgeField extends StatefulWidget {
  final int index;
  final int occupancyIndex;
  ChildAgeField({required this.index, required this.occupancyIndex});

  @override
  _ChildAgeFieldState createState() => _ChildAgeFieldState();
}

class _ChildAgeFieldState extends State<ChildAgeField> {

  final ageController = TextEditingController();
  void saveChildAge({required String age}){
    // TODO: if child aage is more then 18 it should not go through
    if(!isNumeric(age)){
      return;
    }
    Provider.of<HotelSearchFormProvider>(context, listen: false).setChildAgeAt(
      childAgeIndex: widget.index,
      occupancyIndex: widget.occupancyIndex,
      age: int.parse(age)
    );
  }

  void onFinishEditing(value){
    print(ageController.value.text);
    saveChildAge(age: ageController.value.text);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Child ${widget.index + 1} Age",
            style: TextStyle(fontSize: 16),
          ),
          Container(
            height: 25,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(2)),
                border:
                Border.all(width: 1, color: kPrimaryColor)),
            child: FocusScope(
              onFocusChange: (value) => onFinishEditing(value),
              child: TextField(
                controller: ageController,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                maxLength: 2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  counterText: ""
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
