//
//  FiguraDetalheView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct FiguraDetalheView: View {
    
    @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao
    
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
                    
                    PropriedadesView(valor: .constant(""), valorInt: $figura.vidas, valorDescimal: .constant(0), tipo: .numeroInteiro)
                    
                    PropriedadesView(imagem: "bolt", nome: "Potência", valor: .constant(""), valorInt: .constant(0), valorDescimal: $figura.potencia, color: .yellow, tipo: .numeroDecimal)
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
                    minhaColecao.figuras.append(figura)
                } label: {
                    
                    if minhaColecao.figuras.count == 0 {
                        Text("Adicionar á coleção")
                            .padding()
                            .background(.gray)
                            .cornerRadius(30)
                            .foregroundColor(.white)
                    } else {
                        Text("Na sua coleção: \(minhaColecao.figuras.count)")
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
