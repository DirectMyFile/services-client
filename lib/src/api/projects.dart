part of directcode.services.client.api;

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
