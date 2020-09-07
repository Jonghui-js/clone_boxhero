import 'package:flutter/material.dart';

BoxDecoration containerDeco = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      spreadRadius: 2,
      blurRadius: 2,
      offset: Offset(3, 3), // changes position of shadow
    ),
  ],
);
