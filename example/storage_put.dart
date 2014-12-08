import "dart:io";
import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 3) {
    print("Usage: dart storage_put.dart TOKEN KEY VALUE");
    exit(1);
  }
  var sc = new ServicesClient(token: args[0]);
  sc.putStorageValue(args[1], args[2]);
}
