
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                //Clasico
                //.navigationBarTitle("Principal", displayMode: .inline)
                // Mas nuevo
                //.navigationBarTitle("Principal", displayMode: .large)
                // Automatico que es el diseño nuevo
                .navigationBarTitle("Principal", displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
