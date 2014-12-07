part of directcode.services.client.api;

class ProjectDescriptor {
  String name;
}

class ProjectDescriptorImpl extends JsonObject implements Project {
  ProjectDescriptorImpl();

  factory ProjectDescriptorImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new ProjectDescriptorImpl());
  }
}

class Project {
  String _id;
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
