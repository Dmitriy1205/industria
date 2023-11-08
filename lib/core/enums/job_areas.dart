import 'package:flutter/cupertino.dart';

enum JobAreas {
  all("All","Alle"),
  it("IT", "IT"),
  finance("Finance", "Finanzen"),
  humanResources("Human Resources", "Personalwesen"),
  management("Management","Management"),
  logistics("Logistics","Logistik"),
  customerSupport("Customer support","Kundendienst"),
  security("Security","Sicherheit");

  static JobAreas? fromString(String filteringValue){
    return JobAreas.values.where((v) => v.filteringValue == filteringValue).firstOrNull;
  }

  static List<Map<JobAreas, String>> get homeAreas =>
      [
        {JobAreas.it: "assets/icons/IT.svg"},
        {JobAreas.finance: "assets/icons/Finance.svg"},
        {JobAreas.humanResources: "assets/icons/HumanResources.svg"},
        {JobAreas.management: "assets/icons/Management.svg"},
        {JobAreas.logistics: "assets/icons/Logistics.svg"},
        {JobAreas.customerSupport: "assets/icons/CustomerSupport.svg"},
      ];

  static List<JobAreas> get elements => values.sublist(1,);

  String get filteringValue => germanText;

  String localizedName(Locale locale){
    if(locale.languageCode == "de"){
      return germanText;
    }else{
      return englishText;
    }
  }

  final String englishText;
  final String germanText;

  const JobAreas(this.englishText, this.germanText);
}