
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/bloc_observer.dart';
import 'core/services/service_locator.dart' as sl;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyDreDT_FfQfTG130gY_FMH9tolVzhhmt2U",
      authDomain: "industria-a338a.firebaseapp.com",
      projectId: "industria-a338a",
      storageBucket: "industria-a338a.appspot.comT",
      messagingSenderId: "83800078572",
      appId: "1:83800078572:web:6a194e4d7ac4d5952dcdc9",
      measurementId: "G-03XHTLS3P3"));
  Bloc.observer = GlobalObserver();
  await sl.init();
  runApp(App());
}
