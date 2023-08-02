//
//  ContentView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NavigationView {
                FigurasView()
            }
            .tabItem {
                Label("Figuras", systemImage: "face.smiling")
            }
            NavigationView {
                MinhaColecaoView()
            }
            .tabItem {
                Label("Minha coleção", systemImage: "face.dashed")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
