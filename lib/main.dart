import 'package:flutter/material.dart';

import 'package:hockey/screens/home_screen.dart';
import 'package:hockey/blocs/team_provider.dart';

void main() {
  runApp(const Hockey());
}

class Hockey extends StatelessWidget {
  const Hockey({super.key});

  @override
  Widget build(BuildContext context) {
    return TeamProvider(
      child: MaterialApp(
        title: 'Hockey',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
        },
      ),
    );
  }
}
