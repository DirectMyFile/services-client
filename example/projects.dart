import "package:services-client/client.dart" as client;

void main() {
  client.serverUrl = "http://services.directcode.org";
  client.getProjects().then((projects) {
    projects.forEach((project) {
      print("${project.name}: ${project.url} ${project.description}");
    });
  });
}
