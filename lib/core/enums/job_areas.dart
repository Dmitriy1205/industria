enum JobAreas {
  all("All"),
  it("IT"),
  finance("Finance"),
  humanResources("Human Resources"),
  management("Management"),
  logistics("Logistics"),
  customerSupport("Customer support"),
  security("Security");

  static JobAreas? fromString(String val){
    return JobAreas.values.where((v) => v.text == val).firstOrNull;
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

  final String text;

  const JobAreas(this.text);
}