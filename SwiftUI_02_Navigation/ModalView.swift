//
//  ModalView.swift
//  SwiftUI_02_Navigation
//
//  Created by Everis on 26/08/2020.
//  Copyright © 2020 Alan. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        VStack {
            Image(systemName: "play")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.black)
            Text("Esto es una ventana modal de prueba")
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(.black)
        }
        .padding()
        .background(Color(.cyan))
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
