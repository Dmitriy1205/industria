import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = GlobalObserver();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDreDT_FfQfTG130gY_FMH9tolVzhhmt2U",
        appId: "1:83800078572:web:6a194e4d7ac4d5952dcdc9",
        messagingSenderId: "83800078572",
        projectId: "industria-a338a",
        storageBucket: 'industria-a338a.appspot.comT'),
  );
  runApp(App());
}
