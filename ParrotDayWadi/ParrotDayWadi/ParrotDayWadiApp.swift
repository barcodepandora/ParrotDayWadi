//
//  ParrotDayWadiApp.swift
//  ParrotDayWadi
//
//  Created by Juan Manuel Moreno on 20/05/24.
//

import SwiftUI

@main
struct ParrotDayWadiApp: App {
    
    @StateObject private var theViewModel = IndiViewModel()
    
    var body: some Scene {
        WindowGroup {
            IndiView().environmentObject(theViewModel)
        }
    }
}
