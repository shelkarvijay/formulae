import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToastService {

  showToast(String title, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sorry! This feacture is not available for now'),
          backgroundColor: Color.fromARGB(255, 77, 99, 117),
        ));
  }
}