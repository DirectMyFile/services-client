part of directcode.services.client.api;

class ServicesClient {

  String serverUrl;
  String token;

  ServicesClient({String serverUrl: "http://services.directcode.org", String token})
      : serverUrl = serverUrl,
        token = token;
  
  Future<List<Project>> getProjects() {
    return downloadFile("${serverUrl}/api/projects/list").then((response) {
      String body = response.body;
      List<Project> projects = new ProjectImpl.fromJsonString(body);
      return projects;
    });
  }

  Future<List<dynamic>> getMembers() {
    return downloadFile("${serverUrl}/api/members/list").then((response) {
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
    return downloadFile("${serverUrl}/api/quote").then((response) {
      String body = response.body;
      return JSON.decode(body)["quote"];
    });
  }

  Future<String> getRandomZen() {
    return downloadFile("${serverUrl}/api/zen").then((response) {
      String body = response.body;
      return JSON.decode(body)["zen"];
    });
  }

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

}
