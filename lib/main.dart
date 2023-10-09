import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:webmiss/controller/sample_services.dart';
import 'package:webmiss/helper/routes.dart';
import 'package:webmiss/pages/MTS/full_make_code.dart';
import 'package:webmiss/pages/main_page.dart';
import 'package:webmiss/preps/visi_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SampleController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
          navigatorKey: navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: Routes().routes,
        home: const VisiPages(),
      ),
    );
  }
}
