part of directcode.services.client.api;

Future<String> getRandomQuote() {
  return downloadFile("${serverUrl}/api/quote").then((response) {
    String body = response.body;
    return JSON.decode(body)["quote"];
  });
}
