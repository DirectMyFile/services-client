part of directcode.services.client.api;

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
