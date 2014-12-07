import "package:services-client/client.dart" as client;

void main() {
  client.serverUrl = "http://services.directcode.org";
  client.getRandomZen().then((zen) {
    print(zen);
  });
}
