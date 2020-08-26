
import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    @State private var dataModel = ModalModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Escribe algo aqui", text: $text)
                    .padding()
                    .background(
                        Color(.white)
                )
                    .frame(width: 250, height: 50, alignment: .center)
                .padding()

                NavigationLink(destination: SecondView(item: self.text)) {
                    HStack{
                        Image(systemName: "hand.point.right.fill")
                            .foregroundColor(.white)
                            .font(.headline)
                            .shadow(color: .black, radius: 10, x: 2, y: 2)
                        Text("Ir a segunda vista")
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 10, x: 2, y: 2)
                    }
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.gray, .blue]), startPoint: .trailing, endPoint: .leading)
                    )
                        .cornerRadius(10, antialiased: true)
                        .shadow(color: .gray, radius: 10, x: 10, y: 15)
                }
                .navigationBarTitle("Principal", displayMode: .automatic)
                .padding(.bottom, 20)
                
                Button("Ventana modal") {
                    self.dataModel.modal.toggle()
                }
                .sheet(isPresented: self.$dataModel.modal) {
                    ModalView(dataModel: self.$dataModel)
                }
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .trailing, endPoint: .leading)
                )
                    .cornerRadius(10, antialiased: true)
                    .shadow(color: .gray, radius: 10, x: 10, y: 15)
                    .padding(.bottom, 20)
                
                Text("Tu pais es: \(self.dataModel.country) ")
                    .foregroundColor(.black)
                    .font(.system(.largeTitle, design: .rounded))
                    .shadow(color: .gray, radius: 2, x: 5, y: 5)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
