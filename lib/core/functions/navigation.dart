import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavigate(BuildContext context , String routeName) {
  GoRouter.of( context).push(routeName);
}

void customReplacementNavigate(BuildContext context , String routeName) {
  GoRouter.of( context).pushReplacementNamed(routeName);
}