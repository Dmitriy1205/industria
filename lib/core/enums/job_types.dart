import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum JobTypes{
  permanent("Permanent"),
  temporary("Temporary");

  static JobTypes? fromString(String str){
    return JobTypes.values.firstWhere((element) => str == element.value, orElse: () => JobTypes.permanent);
  }

  String localizedString(BuildContext context){
    return switch(this){
      JobTypes.permanent => AppLocalizations.of(context)!.permanent,
      JobTypes.temporary => AppLocalizations.of(context)!.temporary,
    };
  }

  final String value;
  const JobTypes(this.value);
}