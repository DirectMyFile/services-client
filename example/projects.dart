import "package:services-client/client.dart" as client;

void main() {
  client.serverUrl = "http://services.directcode.org";
  client.getProjects().then((projects) {
    print(projects[0].name);
  });
}
