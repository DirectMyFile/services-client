import "package:services-client/client.dart";

void main() {
  getRandomZen().then((zen) {
    print(zen);
  });
}
