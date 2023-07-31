//
//  FiguraView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct FigurasView: View {
    
    @State var apresentado = false
    
    var body: some View {
        List(figuras) { figura in
            NavigationLink(destination: FiguraDetalheView()) {
                HStack {
                    Image(figura.imagem+"_p")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(.gray)
                        .containerShape(Circle())
                    Text(figura.nome)
                }
                
            }
        }
        //            Button {
        //                apresentado = true
        //            } label: {
        //                Text(figura)
        //            }
        //            .sheet(isPresented: $apresentado) {
        //                FiguraDetalheView()
        //            }
    }
}

struct FiguraView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
