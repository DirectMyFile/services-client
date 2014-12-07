import "package:services-client/client.dart";

void main() {
  var sc = new ServicesClient();
  sc.getProjects().then((projects) {
    projects.forEach((project) {
      print("${project.name}: ${project.url} ${project.description}");
    });
  });
}
