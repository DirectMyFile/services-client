library directcode.services.client.api;

import "dart:io";
import "dart:convert";
import "package:http/http.dart" as http;

// Utils
part "src/utils/http.dart";

// APIs
part "src/api/members.dart";
part "src/api/quotes.dart";
part "src/api/zen.dart";

String serverUrl;
