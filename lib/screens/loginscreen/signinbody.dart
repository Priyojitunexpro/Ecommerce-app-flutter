
import 'package:ecom2/components/default_button.dart';
import 'package:ecom2/screens/Authentication/authcontroller.dart';
import 'package:ecom2/screens/loginscreen/detailform.dart';
import 'package:ecom2/screens/loginscreen/login.dart';
import 'package:ecom2/screens/loginscreen/wait.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class siginbody extends StatefulWidget {
  siginbody({Key? key}) : super(key: key);

  @override
  State<siginbody> createState() => _siginbodyState();
}

class _siginbodyState extends State<siginbody> {
  Widget build(BuildContext context) {
    String p = "+91";
    final iskeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                //TO DO Change name of Company
                'INDIA MART',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.03),
              ),
            ),
          ),
          if (!iskeyboard)
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              //TO DO Company Icon
              child: Image(image: AssetImage('assets/images/splash_3.png')),
            )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: kPrimaryColor),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Hello !',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Please Enter country code and Enter your phone number',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Container(
                          color: Colors.white10,
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                              p = phone.completeNumber;
                            },
                            onTap: () {
                              print(iskeyboard);
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: DefaultButton(
                        text: 'Next',
                        press: () async {
                          bool checkuser =
                              await Authcontrol().checkUserExists(p);
                          bool checReq =
                              await Authcontrol().checkReuestExist(p);
                          if (p.length == 13) {
                            checkuser
                                ? Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => login(num: p),
                                    ),
                                  )
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => checReq
                                          ? wait(
                                              num: p,
                                            )
                                          : detailform(
                                              number: p,
                                            ),
                                    ),
                                  );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
