enum JobAreas{
  all("All"),
  softwareEngineering("Software engineering"),
  development("Development"),
  marketing("Marketing"),
  education("Education");

  static List<JobAreas> get elements => values.sublist(1,);

  final String text;
  const JobAreas(this.text);
}