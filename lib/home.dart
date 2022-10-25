import 'package:flutter/material.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){

              final snackBar = SnackBar(
                duration: const Duration(seconds: 5),
                shape: const StadiumBorder(),
                backgroundColor: Colors.black54,
              behavior: SnackBarBehavior.floating,
                content: Text(' Uspješno kliknuti gumb!',style: TextStyle(fontSize:17)),
              action: SnackBarAction(
                label: 'Zatvori',
                onPressed: () {
                },
              ),
            );

            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
          } ,
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red
          ),
          child: const Text('SnackBar poruka'),

        ),
      ),
    );
  }
}
