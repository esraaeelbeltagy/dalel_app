import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavigate(BuildContext context , String routeName) {
  GoRouter.of( context).push(routeName);
}

void customNavigateWithReplacement(BuildContext context , String routeName) {
  GoRouter.of( context).pushReplacementNamed(routeName);
}