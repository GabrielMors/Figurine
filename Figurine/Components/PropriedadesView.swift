//
//  PropriedadesView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

enum TipoPropriedade {
    case numeorInteiro
    case numeroDecimal
    case texto
}

struct PropriedadesView: View {
    
    var imagem: String = "lifepreserver"
    var color: Color = .green
    var nome: String = "Vidas:"
    var valor: String = "0.4"
    var valorInt: Int = 1
    var valorDescimal: Double = 1.0
    var tipo: TipoPropriedade = .numeorInteiro
    
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
                if tipo == .numeorInteiro {
                    Text("\(valorInt)")
                        .padding(.trailing)
                }
                
                if tipo == .numeroDecimal {
                    Text("\(valorDescimal * 100, specifier: "%.0f")%")
                        .padding(.trailing)

                }
                            }
            .sheet(isPresented: $apresentado) {
                PropriedadeEditarView()
            }
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView()
    }
}
