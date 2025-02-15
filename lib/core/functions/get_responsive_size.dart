// getting responsive fontSize
// scale factor
// responsive fontSize
// min and max fontSize

import 'package:flutter/material.dart';

double getResponsiveFontSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  //* limit on responsiveFontSize

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp( lowerLimit, upperLimit); 
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  //* Mobile Layout
  if (width < 600) {
    return width / 400;
  }
  //* Tablet Layout
  else if (width < 900) {
    return width / 700;
  }
  //* Desktop Layout
  else {
    return width / 1000;
  }
}