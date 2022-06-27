//
//  GBShopApp.swift
//  GBShop
//
//  Created by Dmitry Belov on 09.06.2022.
//

import SwiftUI
import UIKit

// AppDelegate injection in SwiftUI from
// https://stackoverflow.com/questions/62538110/swiftui-app-life-cycle-ios14-where-to-put-appdelegate-code
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("AppDelegate in SwiftUI !!!")
        print("It works !!!")
       
        let requestFactory = RequestFactory()
        let auth = requestFactory.makeAuthRequestFatory()
        auth.login(userName: "Somebody", password: "mypassword") { response in
        switch response.result {
        case .success(let login):
            print("login:")
            print(login)
        case .failure(let error):
            print("error:")
            print(error.localizedDescription)
        }
        }
        return true
    }
    
}
    

@main
struct GBShopApp: App {
    
    // inject into SwiftUI life-cycle via adaptor !!!
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
