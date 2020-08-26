

import SwiftUI

struct ModalView: View {
       
    @Binding var dataModel: ModalModel
    
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Image(systemName: "play")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.black)
            Text("Esto es una ventana modal de prueba con este item ==> \(self.dataModel.item)")
                .font(.system(.body, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            TextField("Escribe tu pais", text: self.$dataModel.country )
                .padding()
                .background(
                    Color(.white)
            )
                .frame(width: 250, height: 50, alignment: .center)
            
            Button(action: {
                self.dataModel.modal.toggle()
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
        ModalView(dataModel: .constant(ModalModel(item: 0, country: "", modal: false)))
    }
}
