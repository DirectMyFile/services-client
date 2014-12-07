part of directcode.services.client.api;

class Member {
  String name;
}

class MemberImpl extends JsonObject implements Member {
  MemberImpl();

  factory MemberImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new MemberImpl());
  }
}
