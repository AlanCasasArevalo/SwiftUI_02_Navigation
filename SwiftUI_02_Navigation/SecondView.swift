import SwiftUI

struct SecondView: View {
    
    var item: String
    
    var body: some View {
        VStack {
            Text("\(item)")
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
        SecondView(item: "_")
    }
}
