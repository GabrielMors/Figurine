//
//  FiguraView.swift
//  Figurine
//
//  Created by Gabriel Mors  on 29/07/23.
//

import SwiftUI

struct FigurasView: View {
    var body: some View {
        NavigationLink(destination: FiguraDetalheView()) {
            Text("Mingle")
        }
    }
}

struct FiguraView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
