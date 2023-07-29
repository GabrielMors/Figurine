//
//  ContentView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mingle")
                .font(.title)
                .bold()
                .padding()
            
            HStack {
                Text("Frase:")
                    .bold()
                Text("Problema em dobro")
            }
            .padding(.leading)
            
            HStack {
                Image("figura_01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "lifepreserver")
                            .foregroundColor(Color.green)
                            .frame(width: 30)
                            .font(.system(size: 30))
                        
                        Text("Vidas: ")

                        Text("2")
                            .padding(.trailing)
                    }
                    
                    HStack {
                        Image(systemName: "bolt")
                            .foregroundColor(Color.yellow)
                            .frame(width: 30)
                            .font(.system(size: 30))
                        
                        Text("Potência: ")
                        
                        Text("60%")
                    }
                }
            }
            .padding()
            
            HStack(alignment: .center) {
                Text("O Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extrema precisão. Essas habilidades são úteis para ela em sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
