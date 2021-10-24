//
//  sanboxIOSSwiftUI2021App.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/8/21.
//

import SwiftUI

@main
struct sanboxIOSSwiftUI2021App: App {
    
    let persistenceController = PersistenceController.shared
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { (newScenePhase) in
            switch newScenePhase {
            case .background:
                print("Scene is in background");
                persistenceController.save();
            case .inactive:
                print("Scene is inactive");
            case .active:
                print("Scene is  active");
            @unknown default:
                print("Scene is default");
            }
            
        }
    }
}
