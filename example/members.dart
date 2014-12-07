import "package:services-client/client.dart";

void main() {
  var sc = new ServicesClient();
  sc.getMembers().then((members) {
    print(members);
  });
}
