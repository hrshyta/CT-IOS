//
//  ContentView.swift
//  CTIosIntegration
//
//  Created by Harshitha Maddina on 10/11/22.
//

import SwiftUI
import CleverTapSDK

struct ContentView: View
{
    var body: some View
    {
        Button(action:
                {
                    print("Login")
            
            let profile: Dictionary<String, AnyObject> = [
                //Update pre-defined profile properties
                "Identity": 2 as AnyObject,
                "Email": "tstharsh@gmail.com" as AnyObject
            ]


            CleverTap.sharedInstance()?.onUserLogin(profile)
            CleverTap.sharedInstance()?.recordEvent("User Loggedin from IOS app")
                })
        {
        Text("Login")
                   .fontWeight(.bold)
                   .font(.title)
                   .padding()
                   .background(Color.purple)
                   .foregroundColor(.white)
                   .padding(10)
                   .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
