//
//  SidebarToggleApp.swift
//  SidebarToggle
//


import SwiftUI

@main
struct SidebarToggleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands {
            SidebarCommands()
        }
    }
}
