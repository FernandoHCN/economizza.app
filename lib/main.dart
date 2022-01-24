import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'configuration/injection.dart';
import 'presentation/app_root_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(AppRootWidget());
}
