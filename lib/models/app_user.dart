import 'dart:convert' show json;
import 'package:com.floridainc.dosparkles/actions/app_config.dart';

class AppUser {
  String id;

  String name;

  String email;

  String country;

  String avatarUrl;

  dynamic shippingAddress;

  dynamic storeFavorite;

  Map store;

  List orders;

  String role;

  AppUser.fromParams({
    this.id,
    this.name,
    this.email,
    this.country,
    this.avatarUrl,
    this.shippingAddress,
    this.storeFavorite,
    this.store,
    this.role,
    this.orders,
  });

  factory AppUser(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new AppUser.fromJson(json.decode(jsonStr))
          : new AppUser.fromJson(jsonStr);

  AppUser.fromJson(jsonRes) {
    id = jsonRes['id'];
    name = jsonRes['name'];
    email = jsonRes['email'];
    country = jsonRes['country'];
    shippingAddress = jsonRes['shippingAddress'];
    storeFavorite = jsonRes['storeFavorite'];
    store = jsonRes['store'];
    orders = jsonRes['orders'];

    avatarUrl = jsonRes['avatar'] != null
        ? AppConfig.instance.baseApiHost + jsonRes['avatar']['url']
        : null;

    role = jsonRes['role'] != null ? jsonRes['role']['name'] : null;
  }
  @override
  String toString() {
    return '{"name": "$name","email": ${email != null ? '${json.encode(email)}' : 'null'}, "shippingAddress": $shippingAddress, "storeFavorite": ${storeFavorite['id']}}';
  }
}
