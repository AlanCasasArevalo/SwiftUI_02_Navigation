//
//  ModalView.swift
//  SwiftUI_02_Navigation
//
//  Created by Everis on 26/08/2020.
//  Copyright © 2020 Alan. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    var item: Int
    
    @Binding var country: String
    @Binding var modal: Bool
    
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Image(systemName: "play")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.black)
            Text("Esto es una ventana modal de prueba con este item ==> \(item)")
                .font(.system(.body, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            TextField("Escribe tu pais", text: $country)
                .padding()
                .background(
                    Color(.white)
            )
                .frame(width: 250, height: 50, alignment: .center)
            
            Button(action: {
                self.modal.toggle()
            }) {
                Text("Enviar a la pantalla principal")
                .font(.system(.body, design: .rounded))
                .bold()
                .foregroundColor(.black)
            }
            .padding()
            .background(Color(.yellow))
            
            
        }
        .padding()
        .background(Color(.orange))
        .cornerRadius(10, antialiased: true)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(item: 0, country: .constant(""), modal: .constant(false))
    }
}
