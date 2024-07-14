import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter_ui/screens/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(url: "https://ixhrajndvhehvxyirrwt.supabase.co", anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml4aHJham5kdmhlaHZ4eWlycnd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA5ODExODksImV4cCI6MjAzNjU1NzE4OX0.vjrrbXHC3639-4Lz6LuzTuymsfPIKjvGDY5UHcwiRRw");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'Jobify.',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
  }