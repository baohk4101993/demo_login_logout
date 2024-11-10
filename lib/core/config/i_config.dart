import 'package:injectable/injectable.dart';

abstract class IConfig {
  String get baseUrl;

  Map<String, String> get header;
}
@Injectable(as: IConfig)
class AppConfig extends IConfig {
  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://reqres.in/api";

  @override
  // TODO: implement header
  Map<String, String> get header => {};

}