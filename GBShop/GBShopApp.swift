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
    
    let requestFactory = RequestFactory()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("AppDelegate in SwiftUI !!!")
        print("It works !!!")
        
        let auth = requestFactory.makeAuthRequestFatory()
        let registr = requestFactory.makeRegisterRequestFatory()
        let changeUserData = requestFactory.makeChangeUserDataRequestFactory()
        
        let user = User(id: 123,
                        login: "Somebody",
                        name: "John",
                        lastname: "Doe",
                        password: "mypassword",
                        email: "some@some.ru",
                        gender: "m",
                        creditCard: "9872389-2424-234224-234",
                        bio: "This is good! I think I will switch to another language")
        
        auth.login(userName: "Somebody", password: "mypassword") { response in
            switch response.result {
            case .success(let login):
                print("login:")
                print(login)
            case .failure(let error):
                print("login error:")
                print(error.localizedDescription)
            }
        }
        
        auth.logout(userID: "123") { response in
            switch response.result {
            case .success(let logout):
                print("logout:")
                print(logout)
            case .failure(let error):
                print("logout error:")
                print(error.localizedDescription)
            }
        }
        
        registr.register(user: user) { response in
            switch response.result {
            case .success(let registr):
                print("registr:")
                print(registr)
            case .failure(let error):
                print("registr error:")
                print(error.localizedDescription)
            }
        }
        
        changeUserData.changeUserData(user: user) { response in
            switch response.result {
            case .success(let changeUserData):
                print("changeUserData:")
                print(changeUserData)
            case .failure(let error):
                print("changeUserData error:")
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
