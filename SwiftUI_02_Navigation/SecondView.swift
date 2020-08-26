import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationBarTitle("Second View", displayMode: .automatic)
                .navigationBarItems(trailing:
                    HStack {
                        NavigationLink (destination: ThirdView()) {
                            Image(systemName: "plus.app.fill")
                                .font(.system(.largeTitle, design: .rounded))
                        }
                        
                        NavigationLink (destination: ThirdView()) {
                            Image(systemName: "plus.app.fill")
                                .font(.system(.largeTitle, design: .rounded))
                                .foregroundColor(.green)
                        }
                    }
            )
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
