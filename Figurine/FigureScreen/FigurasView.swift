//
//  FiguraView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct FigurasView: View {
    
    var figuras = ["Migle", "Yodel"]
    
    @State var apresentado = false
    
    var body: some View {
        List(figuras, id: \.self) { figura in
            Button {
                apresentado = true
            } label: {
                Text(figura)
            }
            .sheet(isPresented: $apresentado) {
                FiguraDetalheView()
            }
        }
    }
}
struct FiguraView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
