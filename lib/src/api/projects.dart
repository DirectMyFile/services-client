part of directcode.services.client.api;

Future<List<Project>> getProjects() {
  return downloadFile("${serverUrl}/api/projects/list").then((response) {
    String body = response.body;
    List<Project> projects = new ProjectImpl.fromJsonString(body);
    return projects;
  });
}

abstract class Project {
  String id;
  String name;
  String description;
  String url;
}

class ProjectImpl extends JsonObject implements Project {
  ProjectImpl();

  factory ProjectImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new ProjectImpl());
  }
}
