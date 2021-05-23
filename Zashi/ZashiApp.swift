//
//  ZashiApp.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-22.
//

import SwiftUI

@main
struct ZashiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
