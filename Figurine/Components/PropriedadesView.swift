//
//  PropriedadesView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

enum TipoPropriedade {
    case numeroInteiro
    case numeroDecimal
    case texto
}

struct PropriedadesView: View {
    
    var imagem: String = "lifepreserver"
    var color: Color = .green
    var nome: String = "Vidas:"
    @State var valor: String = "0.4"
    @State var valorInt: Int = 1
    @State var valorDescimal: Double = 1.0
    var tipo: TipoPropriedade = .numeroInteiro
    
    @State var apresentado = false
    
    var body: some View {
        Button {
            apresentado = true
        } label: {
            HStack {
                Image(systemName: imagem)
                    .foregroundColor(color)
                    .frame(width: 30)
                    .font(.system(size: 30))
                
                Text(nome)
                if tipo == .texto {
                    Text(valor)
                        .padding(.trailing)
                }
                if tipo == .numeroInteiro {
                    Text("\(valorInt)")
                        .padding(.trailing)
                }
                
                if tipo == .numeroDecimal {
                    Text("\(valorDescimal * 100, specifier: "%.0f")%")
                        .padding(.trailing)

                }
                            }
            .sheet(isPresented: $apresentado) {
                PropriedadeEditarView(valor: $valor, valorInt: $valorInt, valorDescimal: $valorDescimal, tipo: tipo)
            }
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView()
    }
}
