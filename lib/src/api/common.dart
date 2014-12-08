part of directcode.services.client.api;

class ServicesClient {

  String serverUrl;
  String token;

  ServicesClient({String serverUrl: "http://services.directcode.org", String token})
      : serverUrl = serverUrl,
        token = token;

  void addProject(Project project) {
    postJson("${serverUrl}/api/projects/add", JSON.encode(project), token: token);
  }

  void removeProject(ProjectDescriptor project) {
    postJson("${serverUrl}/api/projects/remove", JSON.encode(project), token: token);
  }

  void addMember(Member member) {
    postJson("${serverUrl}/api/members/add", JSON.encode(member), token: token);
  }

  void removeMember(Member member) {
    postJson("${serverUrl}/api/members/remove", JSON.encode(member), token: token);
  }
  
  Future<List<Project>> getProjects() {
    return get("${serverUrl}/api/projects/list").then((response) {
      String body = response.body;
      List<Project> projects = new ProjectImpl.fromJsonString(body);
      return projects;
    });
  }

  Future<List<dynamic>> getMembers() {
    return get("${serverUrl}/api/members/list").then((response) {
      String body = response.body;
      List<dynamic> rawMembers = JSON.decode(body);
      List<String> members = [];
      rawMembers.forEach((member) {
        members.add(member["name"]);
      });
      return members;
    });
  }

  Future<String> getRandomQuote() {
    return get("${serverUrl}/api/quote").then((response) {
      String body = response.body;
      return JSON.decode(body)["quote"];
    });
  }

  Future<String> getRandomZen() {
    return get("${serverUrl}/api/zen").then((response) {
      String body = response.body;
      return JSON.decode(body)["zen"];
    });
  }

  Future<String> getHostname() {
    return get("${serverUrl}/api/internal/server", token: token).then((response) {
      String body = response.body;
      return JSON.decode(body)["hostname"];
    });
  }

  Future<String> getDartVersion() {
    return get("${serverUrl}/api/internal/server", token: token).then((response) {
      String body = response.body;
      return JSON.decode(body)["vm"]["version"];
    });
  }

  Future<TeamCityVersion> getTeamCityVersion() {
    return get("${serverUrl}/api/teamcity/version").then((response) {
      String body = response.body;
      TeamCityVersion ver = new TeamCityVersionImpl.fromJsonString(body);
      return ver;
    });
  }

  Future<List<TeamCityProject>> getTeamCityProjects() {
    return get("${serverUrl}/api/teamcity/projects").then((response) {
      String body = response.body;
      List<TeamCityProject> projects = new TeamCityProjectImpl.fromJsonString(body);
      return projects;
    });
  }

  Future<List<StorageEntry>> listStorageEntries() {
    return get("${serverUrl}/api/storage/list", token: token).then((response) {
      String body = response.body;
      List<StorageEntry> entries = JSON.decode(body);
      return entries;
    });
  }

  Future<String> getStorageValue(String key) {
    return get("${serverUrl}/api/storage/get?key=${key}", token: token).then((response) {
      String body = response.body;
      return JSON.decode(body)["value"];
    });
  }

  void putStorageValue(String key, String value) {
    var data = JSON.encode({"key": key, "value": value});
    print(data);
    postJson("${serverUrl}/api/storage/put", JSON.encode(data), token: token).then((response) {
      print(response.body);
      print(response.statusCode);
    });
  }

}
