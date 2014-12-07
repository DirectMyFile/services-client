import "package:services-client/client.dart";

void main() {
  var sc = new ServicesClient();
  sc.getTeamCityVersion().then((ver) {
    print("Version Information");
    print(ver.full_version);
    print(ver.major);
    print(ver.minor);
    print(ver.build_number);
    print(ver.build_date);
  });
  sc.getTeamCityProjects().then((projects) {
    print("Project Information");
    projects.forEach((project) {
      print("${project.name} ${project.name} ${project.url} ${project.description}");
    });
  });
}
