part of directcode.services.client.api;

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
