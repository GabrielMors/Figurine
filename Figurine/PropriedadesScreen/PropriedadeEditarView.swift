//
//  PropriedadeEditarView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct PropriedadeEditarView: View {
    
    @Binding var valor: String
    @Binding var valorInt: Int
    @Binding var valorDescimal: Double
    var tipo: TipoPropriedade = .numeroInteiro
    
    var body: some View {
        VStack {
            if tipo == .numeroInteiro {
                Stepper("Valor atual: \(valorInt)", value: $valorInt)
            }
            if tipo == .numeroDecimal {
                Text("Valor atual: \(valorDescimal * 100, specifier: "%.0f")%")
                Slider(value: $valorDescimal)
            }
            if tipo == .texto {
                TextEditor(text: $valor)
            }
            Spacer()
        }
        .padding()
    }
}

struct PropriedadeEditarView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadeEditarView(valor: .constant(""), valorInt: .constant(0), valorDescimal: .constant(1.0), tipo: .numeroDecimal)
    }
}
