//
//  FiguraView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct FigurasView: View {
    
    var body: some View {
    
        List(figuras) { figura in
            NavigationLink(destination: FiguraDetalheView(figura: figura)) {
                FigurasLinhaView(figura: figura)
            }
        }
        .navigationTitle("Figuras")
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
