part of directcode.services.client.api;

Future<TeamCityVersion> getTeamCityVersion() {
  return downloadFile("${serverUrl}/api/teamcity/version").then((response) {
    String body = response.body;
    TeamCityVersion ver = new TeamCityVersionImpl.fromJsonString(body);
    return ver;
  });
}

Future<List<TeamCityProject>> getTeamCityProjects() {
  return downloadFile("${serverUrl}/api/teamcity/projects").then((response) {
    String body = response.body;
    List<TeamCityProject> projects = new TeamCityProjectImpl.fromJsonString(body);
    return projects;
  });
}

abstract class TeamCityVersion {
  String full_version;
  String major;
  String minor;
  String build_number;
  String build_date;
}

class TeamCityVersionImpl extends JsonObject implements TeamCityVersion {
  TeamCityVersionImpl();

  factory TeamCityVersionImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new TeamCityVersionImpl());
  }
}

abstract class TeamCityProject {
  String id;
  String name;
  String description;
  String url;
}

class TeamCityProjectImpl extends JsonObject implements TeamCityProject {
  TeamCityProjectImpl();

  factory TeamCityProjectImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new TeamCityProjectImpl());
  }
}
