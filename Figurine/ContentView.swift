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
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
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
                
                VStack {
                    HStack {
                        Image(systemName: "lifepreserver")
                            .foregroundColor(Color.green)
                            .font(.system(size: 30))
                        
                        Text("Vidas: ")
                        
                        
                        
                        Text("2")
                            .padding(.trailing)
                        Spacer()
                    }
                    
                    HStack {
                        Image(systemName: "bolt")
                            .foregroundColor(Color.yellow)
                            .font(.system(size: 30))
                        
                        Text("Potência: ")
                        
                        
                        
                        Text("60%")
                        Spacer()
                    }

                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
