import "dart:io";
import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 2) {
    print("Usage: dart remove_member.dart TOKEN MEMBERNAME");
    exit(1);
  }
  var sc = new ServicesClient(token: args[0]);
  Member m = new MemberImpl();
  m.name = args[1];
  sc.removeMember(m);
}
