import "package:services-client/client.dart";

void main() {
  var sc = new ServicesClient();
  sc.getRandomQuote().then((quote) {
    print(quote);
  });
}
