//
//  AppDelegate.swift
//  host_app
//
//  Created by Muh. Rahmatullah on 02/12/22.
//

import UIKit

import Flutter
// Used to connect plugins (only if you have plugins with iOS platform code).
import FlutterPluginRegistrant

@main
class AppDelegate : FlutterAppDelegate {

    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      // Runs the default Dart entrypoint with a default Flutter route.
      flutterEngine.run();
      // Used to connect plugins (only if you have plugins with iOS platform code).
      GeneratedPluginRegistrant.register(with: self.flutterEngine);
      return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }

}

