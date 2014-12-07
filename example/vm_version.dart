import "dart:io";
import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 1) {
    print("Usage: dart vm_version.dart TOKEN");
    exit(1);
  }
  var sc = new ServicesClient(token: args[0]);
  sc.getDartVersion().then((version) {
    print(version);
  });
}
