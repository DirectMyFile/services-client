import "package:services-client/client.dart";

void main(List<String> args) {
  if (args.length != 1) {
    print("Usage: dart project_remove.dart TOKEN");
  }
  var sc = new ServicesClient(token: args[0]);
  ProjectDescriptor p = new ProjectDescriptorImpl();
  p.name = "test2";
  sc.removeProject(p);
}
