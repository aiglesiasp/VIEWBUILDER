//
//  ViewBuilderApp.swift
//  ViewBuilder
//
//  Created by Aitor Iglesias Pubill on 9/12/22.
//

import SwiftUI

@main
struct ViewBuilderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
