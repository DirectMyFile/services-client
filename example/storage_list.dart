import "dart:io";
import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 1) {
    print("Usage: dart storage_list.dart TOKEN");
    exit(1);
  }
  var sc = new ServicesClient(token: args[0]);
  sc.listStorageEntries().then((entries) {
    print(entries);
  });
}
