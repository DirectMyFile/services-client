import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 1) {
    print("Usage: dart project_add.dart TOKEN");
  }
  var sc = new ServicesClient(token: args[0]);
  Project p = new ProjectImpl();
  p.name = "test2";
  p.url = "http://example.com";
  p.description = "test desc";
  sc.addProject(p);
}
