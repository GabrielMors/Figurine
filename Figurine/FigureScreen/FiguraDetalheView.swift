//
//  FiguraDetalheView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct FiguraDetalheView: View {
    
    @State var itensNaColecao: Int = 0
    var figura: Figura
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Frase:")
                    .bold()
                Text(figura.frase)
            }
            .padding(.leading)
            
            HStack {
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                
                VStack(alignment: .leading) {
                    
                    PropriedadesView(valorInt: figura.vidas, tipo: .numeorInteiro)
                    
                    PropriedadesView(imagem: "bolt", color: .yellow, nome: "Potência", valorDescimal: figura.potencia, tipo: .numeroDecimal)
                }
            }
            .padding()
            
            HStack {
                Spacer()
                Text(figura.descricao)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Spacer()
            
            HStack() {
                Spacer()
                Button {
                    itensNaColecao += 1
                } label: {
                    
                    if itensNaColecao == 0 {
                        Text("Adicionar á coleção")
                            .padding()
                            .background(.gray)
                            .cornerRadius(30)
                            .foregroundColor(.white)
                    } else {
                        Text("Na sua coleção: \(itensNaColecao)")
                            .padding()
                            .background(.green)
                            .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
            }.padding()
            
        }
        .navigationTitle(
            Text(figura.nome)
        )
    }
}

struct FiguraDetalheView_Previews: PreviewProvider {
    static var previews: some View {
        FiguraDetalheView(figura: figuras[0])
    }
}
