import 'package:flutter/material.dart';

import 'faq_screen.dart';
import 'notification_screen.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  bool _isObscure3 = true;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, size: 20),
          ),
          title: const Center(
            child: Text(
              "Security Settings",
              style: TextStyle(fontSize: 25),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home, size: 25),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  height: MediaQuery.of(context).size.height * .13,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.face, size: 40),
                          ),
                        ),
                        Center(
                          child: Wrap(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Enable FingerPrint/ Face ID gesture",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "Your fingerprint will be used for \nauthentication",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Colors.grey,
                                activeColor: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .08,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Set APP Pin",
                          labelStyle: const TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                          suffixIcon: IconButton(
                              icon: Icon(
                                  _isObscure ? Icons.visibility_off : Icons.visibility),
                              color: Colors.grey,
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })),
                    ),
                  ),
                ),
              ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * .08,
            width: MediaQuery.of(context).size.width * .9,
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: _isObscure1,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Confirm Set App PIN",
                    labelStyle: const TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                    suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure1 ? Icons.visibility_off : Icons.visibility),
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            _isObscure1 = !_isObscure1;
                          });
                        })),
              ),
            ),
          ),
        ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("App PIN Should be of 6 digits"),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  height: 15,
                  thickness: 10,
                  color: Colors.black12,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            obscureText: _isObscure2,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Set Password",
                                labelStyle: const TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                        _isObscure2 ? Icons.visibility_off : Icons.visibility),
                                    color: Colors.grey,
                                    onPressed: () {
                                      setState(() {
                                        _isObscure2 = !_isObscure2;
                                      });
                                    })),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            obscureText: _isObscure3,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Confirm Password",
                                labelStyle: const TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                        _isObscure3 ? Icons.visibility_off : Icons.visibility),
                                    color: Colors.grey,
                                    onPressed: () {
                                      setState(() {
                                        _isObscure3 = !_isObscure3;
                                      });
                                    })),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Password Should be a minimum of 8 Characters including alphabets, numbers, at least one uppercase, one lowercase and one special character to proceed"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FAQScreen(),),);
              },
              child: const Text(
                "Update",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ));
  }
}
