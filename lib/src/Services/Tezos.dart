// import 'package:flutter/material.dart';
// import 'package:tezster_dart/tezster_dart.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   tezosWalletUtil() async {
//     //Generate mnemonic
//     String mnemonic = TezsterDart
//         .generateMnemonic(); // strength is optional, by default it's 256 ==> Generates 24 words.
//     print("mnemonic ===> $mnemonic");
//     //mnemonic ===> 24 random words, [If strength parameter is changed the words length differs.]

//     //Generate keys from mnemonic
//     List<String> keys = await TezsterDart.getKeysFromMnemonic(
//       mnemonic:
//           "trophy trend situate today reject lamp retreat banner movie blur lava decrease wink board core depart fix increase suit develop radio casino deliver trigger",
//     );
//     print("keys ===> $keys");
//     //keys ===> [privateKey, publicKey, publicKeyHash]
//     //Accessing: private key ===> keys[0] | public key ===> keys[1] | public Key Hash ===> identity[2] all of type string

//     // Get Balance
//     String balance = await TezsterDart.getBalance(
//         'tz1TG1tF2HP2VgvR5Q7yrQN2dNVsvRE3UVd2', 'http://localhost:18732');
//     print("Accoutn Balance ===> $balance");

//     var server = 'http://localhost:18732';

//     var keyStore = KeyStoreModel(
//       publicKey: 'edpku69C9sV9MgMH1ZFKPcDq5VWDVgADkykfcqye9rcrX8NFrmLTY6',
//       secretKey:
//           'edskRyvWVrRW2Ghgv5YhtcXopqnhAX7gSUP3iZtVyWt9HA8MJ3P233sZU7hzsmC5ftT2hSKTn1y9zaAexDWvgGmVXF1cgkTnuT',
//       publicKeyHash: 'tz1TG1tF2HP2VgvR5Q7yrQN2dNVsvRE3UVd2',
//     );

//     //Send transaction
//     var transactionSigner = await TezsterDart.createSigner(
//         TezsterDart.writeKeyWithHint(keyStore.secretKey, 'edsk'));
//     var transactionResult = await TezsterDart.sendTransactionOperation(
//       server,
//       transactionSigner,
//       keyStore,
//       'tz1RVcUP9nUurgEJMDou8eW3bVDs6qmP5Lnc',
//       500000,
//       1500,
//     );
//     print("Applied operation ===> ${transactionResult['appliedOp']}");
//     print("Operation groupID ===> ${transactionResult['operationGroupID']}");

//     @override
//     void initState() {
//       super.initState();
//       tezosWalletUtil();
//     }

//     @override
//     Widget build(BuildContext context) {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Center(
//               child: Text(
//                 "Welcome to Tezster_dart package.\n Please check the debug console for the outputs",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
