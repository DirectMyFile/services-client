part of directcode.services.client.utils;

Future<Response> downloadFile(String url) {
  return http.get(url);
}
