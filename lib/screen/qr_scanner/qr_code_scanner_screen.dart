import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';
import 'package:oalet/generated/assets.dart';
import 'package:oalet/theme.dart';
class QrCodeScannerScreen extends StatelessWidget {
  const QrCodeScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: kDefaultPadding * 0.5,),
                Text(
                  "Qr Code Scanner Screen",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w300, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                  ),
                ),
                const SizedBox(width: kDefaultPadding * 0.5,),
                Image.asset(
                  Assets.svgQrcode
                ),
                /*
                OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.qr_code_scanner_outlined), label: Text("Scan")),
                Padding(
                    padding: const EdgeInsets.only(top: kDefaultPadding * 0.5),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Clict"),
                    )
                ),
                */
                const SizedBox(width: kDefaultPadding * 0.5,),
                InkWell(
                  onTap: (){
                    print("Scan Qr Button");
                  },
                  child: Container(
                      //width: 100,
                      padding: const EdgeInsets.only(left: 40, right: 5),
                      margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding * 0.5)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.document_scanner_sharp,
                            color: Colors.black,
                          ),
                           SizedBox(width: kDefaultPadding * 0.3,),
                          Text(
                            "Scan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: kDefaultPadding * 1,),
                        ],
                      ),
                    ),
                )
              ],
              )
    );
  }

}
