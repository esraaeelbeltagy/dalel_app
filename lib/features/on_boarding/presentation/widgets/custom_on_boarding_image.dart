

import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:flutter/material.dart';

class CustomOnbaordingImage extends StatelessWidget {
  const CustomOnbaordingImage({
    super.key,
    required this.onBoardingModel,
  });

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 290),
      child: AspectRatio(
        aspectRatio: 343 / 290,
        child: Image.asset(onBoardingModel.image),
      ),
    );
  }
}
