import 'package:ibmc_flutter_app_template/config/environment/build_type.dart';
import 'package:ibmc_flutter_app_template/config/environment/environment.dart';
import 'package:ibmc_flutter_app_template/runner.dart';

void main() {
  run(const Environment(buildType: BuildType.prod));
}