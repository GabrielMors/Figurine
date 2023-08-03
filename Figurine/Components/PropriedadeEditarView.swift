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
    @Binding var valorDecimal: Double
    var tipo: TipoPropriedade = .numeroDecimal
    @Binding var apresentado: Bool
    @State var valorSlider: Double = 0
    @State var valorStepper: Int = 1
    
    var body: some View {
        VStack {
            if tipo == .numeroInteiro {
                Stepper("Valor atual: \(valorInt)", value: $valorInt)
            }
            if tipo == .numeroDecimal {
                Text("Valor atual: \(valorDecimal * 100, specifier: "%.0f")%")
                Slider(value: $valorDecimal)
            }
            if tipo == .texto {
                TextEditor(text: $valor)
            }
            Button {
                apresentado = false
            } label: {
                Text("Salvar")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(30)
            DatePicker(selection: .constant(Date()), label: { Text("Date") })
            Stepper("Contador \(valorStepper)", value: $valorStepper, in: 0...10 )
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.gray)
                
            Spacer()
        }
        .padding()
    }
}

struct PropriedadeEditarView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadeEditarView(valor: .constant(""), valorInt: .constant(0), valorDecimal: .constant(1.0), tipo: .numeroDecimal, apresentado: .constant(true))
    }
}
