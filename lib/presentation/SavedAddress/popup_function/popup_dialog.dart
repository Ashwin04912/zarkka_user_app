import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showDeleteConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          "Delete Address",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        content: Text(
          "Are you sure you want to delete this address?",
          style: TextStyle(
            color: Colors.black.withOpacity(0.800000011920929),
            fontSize: 13,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        actions: [
          // Cancel Button
          Column(
            children: [
              Container(
                height: 31.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.red,
                ),
                width: double.infinity,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    // Perform delete operation here
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text(
                    'Delete Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Delete Button
        ],
      );
    },
  );
}
