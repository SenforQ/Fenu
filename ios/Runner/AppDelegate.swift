import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
//      let interfacesComplete = ["Launching","Application","Options"]
//      let interStr = interfacesComplete[0];
//      let fourStr = interfacesComplete[10];
//      debugPrint("foutStr : \(interfacesComplete[3])")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
