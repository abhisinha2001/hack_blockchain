import 'package:flutter/material.dart';
import 'package:tezster_dart/tezster_dart.dart';

import '../../constants.dart';
import '../../constants.dart';
import '../../constants.dart';

class TransferFunds extends StatefulWidget {
  @override
  _TransferFundsState createState() => _TransferFundsState();
}

class _TransferFundsState extends State<TransferFunds> {
  // fetchBalance() async {
  //   String balance = await TezsterDart.getBalance(
  //       'tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx', 'http://192.168.0.104:18732');
  //   print("Accoutn Balance ===> $balance");
  // }

  // transaction() async {
  //   var server = 'https://testnet.tezster.tech';

  //   var keyStore = KeyStoreModel(
  //     publicKey: 'edpkujhGrR8XbkQo4QNHkYQUy2AQtgz4Bk2xyXKqfnyHhVeTq7N8L7',
  //     secretKey:
  //         'edskRyDqqtjcQCHMQsJSoEATuoarhUVzQVG2fZEFg84B4gP19uhBAnrWD2qfEJzVZxx42sFfTiHa9HJ7TY3XYnGoRnQcA6nzDj',
  //     publicKeyHash: 'tz1a9FyykWoNQmegLDS6wk37rqvUv7bRXrDs',
  //   );

  //   var signer = await TezsterDart.createSigner(
  //       TezsterDart.writeKeyWithHint(keyStore.secretKey, 'edsk'));

  //   var result = await TezsterDart.sendTransactionOperation(
  //     server,
  //     signer,
  //     keyStore,
  //     'tz1UvydprmZNizouD7ygtZ6DDMq6WkK8eYKD',
  //     0,
  //     0,
  //   );

  //   print("Applied operation ===> $result['appliedOp']");
  //   print("Operation groupID ===> $result['operationGroupID']");
  // }

  @override
  Widget build(BuildContext context) {
    // fetchBalance();
    // transaction();
    TextEditingController accountController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: lightNavyBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Transfer Funds to..',
                      style: TextStyle(
                        color: navyBlue1,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      controller: accountController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Enter Account Number',
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextField(
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Enter Amount ',
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Proceed',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: navyBlue1,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
