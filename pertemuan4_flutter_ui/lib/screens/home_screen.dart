import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/background.png', height: 241,
              fit: BoxFit.cover,
              width: double.infinity,),

              Padding(
                padding: const EdgeInsets.only(top: 74, left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jobify.', 
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 22, 
                          fontWeight: FontWeight.w800,
                          color: Colors.white 
                          ),
                         ),
                        Text('Icons', style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )

              

            ],
          )
        ],
        ),
      )
    );
  }
}