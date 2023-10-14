import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

String? routeValue(BuildContext context, String key){
  return GoRouterState.of(context).uri.queryParameters[key];
}