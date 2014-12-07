part of directcode.services.client.api;

Future<String> getRandomZen() {
  return downloadFile("${serverUrl}/api/zen").then((response) {
    String body = response.body;
    return JSON.decode(body)["zen"];
  });
}
