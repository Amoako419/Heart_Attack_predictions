import 'package:flutter/material.dart';

class ABOUT extends MaterialPageRoute<Null> {
  ABOUT()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF72A8A9),
              title: Text('About Us'),
              elevation: 5.0,
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Card(
                      elevation: 20,
                      clipBehavior: Clip.hardEdge,
                      child: SizedBox(
                        width: 300,
                        // height: 580,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/logo.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "About Us",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "Welcome to the Heart Failure App, your dedicated mobile companion for the early detection and effective management of heart failure. Our mission is to empower individuals and caregivers with the tools they need to take charge of heart health and improve overall well-being.",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Our Vision",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "At the Heart Failure App, we envision a future where heart failure is detected early and managed effectively, allowing patients to lead healthier, more active lives. We are committed to leveraging technology to enhance patient outcomes through education, monitoring, and community support.",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                   
                  ],
                ),
              ),
            ),
          );
        });
}
