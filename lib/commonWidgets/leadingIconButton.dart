import 'package:flutter/material.dart';

import '../constants/constants.dart';

SizedBox leadingIconButton(var startIcon, var buttonText) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            startIcon,
            color: greyColor,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            buttonText,
            style: TextStyle(
              color: greyColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Icon(
            Icons.navigate_next_outlined,
            color: greyColor,
            size: 30,
          ),
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(mediumGreyColor),
        overlayColor: MaterialStateProperty.all(yellowColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ),
  );
}
