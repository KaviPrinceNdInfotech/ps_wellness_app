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
    GMSServices.provideAPIKey("AIzaSyAVJ6WcbMb96HxFwYJTgo3a00yxYj-ha80")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
