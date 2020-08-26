
import SwiftUI

struct ContentView: View {
    
    @State private var modal = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
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
                    self.modal.toggle()
                }
                .sheet(isPresented: self.$modal) {
                    ModalView()
                }
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .trailing, endPoint: .leading)
                )
                    .cornerRadius(10, antialiased: true)
                    .shadow(color: .gray, radius: 10, x: 10, y: 15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
