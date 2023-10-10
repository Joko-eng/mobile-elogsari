import 'package:apptest/produk_form.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  //height: 300,
                  //color: const Color.fromARGB(255, 255, 255, 255),
                  child: Image.asset('android/assets/images/logo.jpeg'),
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 244, 244, 244),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ), //padding welcom
                  Text(
                    "Sign in to your Account",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Masukan Email",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueGrey),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0)),
                        suffixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
                            borderSide:
                                BorderSide(width: 3, color: Colors.blueGrey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        const Text("Ingat saya"),
                        Checkbox(value: false, onChanged: (value) {}),
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: (Colors.grey),
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {},
                              child: const Text("Lupa Password?")),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              child: const Text("Login")))),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigasi ke halaman formproduk.dart
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProdukForm(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text("Ke Form Produk"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
