//
//  FigurineApp.swift
//  Figurine
//
//  Created by Gabriel Mors  on 28/07/23.
//

import SwiftUI

@main
struct FigurineApp: App {
    var body: some Scene {
        let minhaColecao = MinhaColecao()
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
            // Toda view que esta dentro desse ContentView tera acesso a variavel
        }
    }
}
