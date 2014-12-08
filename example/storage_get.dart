import "dart:io";
import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 2) {
    print("Usage: dart storage_get.dart TOKEN KEY");
    exit(1);
  }
  var sc = new ServicesClient(token: args[0]);
  sc.getStorageValue(args[1]).then((value) {
    print(value);
  });
}
