import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:match_work/core/constants/app_constants.dart';
import 'package:match_work/core/constants/string.dart';
import 'package:match_work/core/services/storage_manager.dart';
import 'package:match_work/core/utils/device_bar_utils.dart';
import 'package:match_work/ui/views/qr_code_scanner_resullt_view.dart';

class QRcodeScanLauncherView extends StatefulWidget {
  @override
  _QRcodeScanLauncherViewState createState() => _QRcodeScanLauncherViewState();
}

class _QRcodeScanLauncherViewState extends State<QRcodeScanLauncherView> {
  String qrCode = "Unknown";

  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    DeviceBarUtils.showStatusBar(false);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppBackgroundImages.BackgroundQrCode),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                    top: screenHeight / 20, left: screenHeight / 20),
                child: Text(
                  BackTitle,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: screenHeight / 15),
              child: Text(
                "scanner \nle qr code".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 15),
              child: Container(
                alignment: Alignment.center,
                height: screenHeight / 3,
                width: screenHeight / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.QrCodeSample),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: screenHeight / 15),
              child: Text(
                "Tuba met à votre disposition un QR\nCode pour vous permettre de vous\nconnectez à l'application\nMatchWork",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                width: screenHeight / 2.8,
                height: screenHeight / 8,
                padding: EdgeInsets.only(top: screenHeight / 15),
                child: RaisedButton(
                  child: Text(
                    "scannez".toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async => scanQRCode(),
                  color: AppColors.AccentColor,
                )),
          ],
        ),
      ),
    );
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", BackTitle, false, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        this.qrCode = qrCode;
      });

      print("Qr code result : $qrCode");

      /// TODO : Implementer quelque chose quand le retour est égal à -1
      if (qrCode == QrCodeKey) {
        StorageManager.saveData(StorageFirstaunchKey, false);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QrCodeScannerSuccess()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QrCodeScannerFailed()),
        );
      }
    } on PlatformException {
      this.qrCode =
          "Impossible de recupérer la version de la plateforme, veuillez contacter un administrateur";
    }
  }
}