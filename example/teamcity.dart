import "package:services-client/client.dart" as client;

void main() {
  client.serverUrl = "http://services.directcode.org";
  print("Version Information");
  client.getTeamCityVersion().then((ver) {
    print(ver.full_version);
    print(ver.major);
    print(ver.minor);
    print(ver.build_number);
    print(ver.build_date);
  });
  print("Project Information");
  client.getTeamCityProjects().then((projects) {
    projects.forEach((project) {
      print("${project.name} ${project.name} ${project.url} ${project.description}");
    });
  });
}
