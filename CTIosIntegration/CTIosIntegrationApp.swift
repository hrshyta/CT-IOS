//
//  CTIosIntegrationApp.swift
//  CTIosIntegration
//
//  Created by Harshitha Maddina on 10/11/22.
//

import SwiftUI
import CleverTapSDK

@main
struct CTIosIntegrationApp: App
{
    var body: some Scene
    {
        WindowGroup {
            ContentView()
        }
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject:AnyObject]?) -> Bool {
    
        CleverTap.autoIntegrate()
        CleverTap.setDebugLevel(CleverTapLogLevel.debug.rawValue)
        return true
        
    }
    
}
