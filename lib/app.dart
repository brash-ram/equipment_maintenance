import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:paged_datatable/l10n/generated/l10n.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'api/api_client.dart';
import 'api/api_repository.dart';
import 'api/table_repository.dart';
import 'core/router.dart';
import 'logging.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) =>
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => ApiClient(
              baseUri: Uri.https('eam-demo.aspectnet.ru', 'platform/api/dm/rest/noAuth/actions'),
              client: Client(),
            )
          ),
          RepositoryProvider(
            create: (context) => ApiRepository(client: context.read(),),
          ),
          RepositoryProvider(
            create: (context) => TableRepository(),
          ),
        ],
        child: Builder(
          builder: (context) {
            final appRouter = AppRouter();
            return MaterialApp.router(
              localizationsDelegates: const [
                PagedDataTableLocalization.delegate
              ],
              debugShowCheckedModeBanner: false,
              title: 'Equipment maintenance',
              theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
              routerConfig: appRouter.config(
                navigatorObservers: () => [
                  TalkerRouteObserver(talker),
                ],
              ),
            );
          },
        ),
      );
}
