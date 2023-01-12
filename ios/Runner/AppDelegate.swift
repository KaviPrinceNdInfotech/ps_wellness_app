import UIKit
import Flutter
import GoogleMap

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyBrbWFXlOYpaq51wteSyFS2UjdMPOWBlQw")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    <key>NSLocationWhenInUseUsageDescription</key>
    <string>This app needs access to location when open.</string>
  }
}
