//
//  PropriedadesView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct PropriedadesView: View {
    
    var imagem = "lifepreserver"
    var color = Color.green
    var nome = "Vidas:"
    var valor = "2"
    
    var body: some View {
        HStack {
            Image(systemName: imagem)
                .foregroundColor(color)
                .frame(width: 30)
                .font(.system(size: 30))
            
            Text(nome)
            
            Text(valor)
                .padding(.trailing)
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView()
    }
}
