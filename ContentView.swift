//
//  ContentView.swift
//  SidebarToggle
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Foo")
                .frame(minWidth: 200)
            Text("Bar")
                .padding()
        }.toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: toggleSidebar, label: {
                    Image(systemName: "sidebar.leading")
                })
            }
        }
        .frame(minWidth: 800, minHeight: 600)
    }
    
    private func toggleSidebar() {
        #if os(macOS)
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
