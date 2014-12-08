part of directcode.services.client.api;

class StorageEntry {
  String id;
  String key;
  String value;
  String ownerToken;
}

class StoragePut extends JsonObject {
  String key;
  String value; 

  factory StoragePut.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new StoragePut());
  }

  StoragePut(this.key, this.value);
}

class StorageGet {
  String key;
}
