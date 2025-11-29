import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/pexels-pixabay-302743.jpg",
                  fit: BoxFit.cover,
                ),

              ),
            ),
            SizedBox(height: 20),
            Text("Wellcom",style: TextStyle(
              fontSize: 18,
              color:Colors.white,
              fontWeight: FontWeight.bold
            ),),

          ],
        ),
      ),
    );
  }
}
