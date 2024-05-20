//
//  IndiView.swift
//  ParrotDayWadi
//
//  Created by Juan Manuel Moreno on 20/05/24.
//

import SwiftUI

struct IndiView: View {
    
    @EnvironmentObject var theViewModel: IndiViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Allez") {
            Task {
                await theViewModel.deliver()
            }
        }
    }
}

#Preview {
    IndiView()
}
