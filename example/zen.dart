import "package:services-client/client.dart";

void main() {
  var sc = new ServicesClient();
  sc.getRandomZen().then((zen) {
    print(zen);
  });
}
