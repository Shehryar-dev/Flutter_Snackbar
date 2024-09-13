import 'package:flutter/material.dart';
import 'Components/errormessage.dart';
import 'Components/helpMessage.dart';
import 'Components/successMessage.dart';
import 'Components/warningMessage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Snackbar Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  toastCallPage(),
    );
  }
}

class toastCallPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return toastCall();
  }
}

class toastCall extends State<toastCallPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title:const Text("Snackbar Test", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Error Btn'),
              onPressed: () {
                setState(() {
                  Error_snack(message: "An unexpected error occurred. Please try again later.").show(context);
                });
              },
            ),
            ElevatedButton(
              child: const Text('Success Btn'),
              onPressed: () {
                setState(() {
                  Success_snack(message: "Operation completed successfully! You're all set.").show(context);
                });
              },
            ),
            ElevatedButton(
              child: const Text('Warning Btn'),
              onPressed: () {
                setState(() {
                  Warn_snack(message: "Warning! You might want to double-check your inputs.").show(context);
                });
              },
            ),
            ElevatedButton(
              child: const Text('Help Btn'),
              onPressed: () {
                setState(() {
                  help_snack(message: "Need assistance? Reach out to support or consult the guide.").show(context);

                });
              },
            ),

          ],
        ),
      ),

    );
  }
}


