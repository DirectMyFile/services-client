part of directcode.services.client.utils;

Future<Response> get(String url, {String token: ""}) {
  return http.get(url, headers: {"X-DirectCode-Token": token});
}

Future<Response> postJson(String url, String content, {String token: ""}) {
  return http.post(url, headers: {"X-DirectCode-Token": token, "Content-Type": "application/json"}, body: content);
}
