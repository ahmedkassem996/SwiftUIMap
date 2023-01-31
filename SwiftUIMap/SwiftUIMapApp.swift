//
//  SwiftUIMapApp.swift
//  SwiftUIMap
//
//  Created by Ahmed Kasem on 03/01/2023.
//

import SwiftUI

@main
struct SwiftUIMapApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
