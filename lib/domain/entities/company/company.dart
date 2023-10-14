import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../core/utils/firebase_timestamp_converters.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    required String logo,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json)
      => _$CompanyFromJson(json);
}