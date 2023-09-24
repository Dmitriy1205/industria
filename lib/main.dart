import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage_web/firebase_storage_web.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/bloc_observer.dart';
import 'core/services/service_locator.dart' as sl;
import 'data/remote/job_application/job_application_service_impl.dart';
import 'domain/entities/company/company.dart';
import 'domain/entities/job_application_request/job_application_request.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = GlobalObserver();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDreDT_FfQfTG130gY_FMH9tolVzhhmt2U",
        appId: "1:83800078572:web:6a194e4d7ac4d5952dcdc9",
        messagingSenderId: "83800078572",
        projectId: "industria-a338a",
        storageBucket: 'industria-a338a.appspot.com'),
  );
  await sl.init();
  runApp(App());
}
