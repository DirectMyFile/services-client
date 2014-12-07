library directcode.services.client.api;

import "dart:io";
import "dart:convert";
import "package:http/http.dart" as http;
import "package:json_object/json_object.dart";

// Utils
part "src/utils/http.dart";

// APIs
part "src/api/members.dart";
part "src/api/projects.dart";
part "src/api/teamcity.dart";
part "src/api/quotes.dart";
part "src/api/zen.dart";

String serverUrl;
