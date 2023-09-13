import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';
import 'package:oalet/generated/assets.dart';
import 'package:oalet/theme.dart';
class QrCodeScannerScreen extends StatelessWidget {
  const QrCodeScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  child: InkWell(

                    child: Container(
                      //width: 100,
                      padding: const EdgeInsets.only(left: 40, right: 5),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(kDefaultPadding * 0.5)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.document_scanner_sharp,
                            color: Color(0xFFFFFFFF),
                          ),
                          SizedBox(width: kDefaultPadding * 0.5,),
                          Text(
                            "Scan",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
              )
        ),
      ),
    );
  }

}
