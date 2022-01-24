import 'package:baseapp/application/auth/auth_bloc.dart';
import 'package:baseapp/configuration/injection.dart';
import 'package:baseapp/presentation/routes/router.dart';
import 'package:baseapp/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'helpers/theme.dart';

class AppRootWidget extends StatelessWidget {
  const AppRootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()))
      ],
      child: MaterialApp(
        title: "BaseApp",
        debugShowCheckedModeBanner: false,
        theme: themeLight(context),
        themeMode: ThemeMode.light,
        onGenerateRoute: Routes.generateRoute,
        initialRoute: SplashRoute,
      ),
    );
  }
}
