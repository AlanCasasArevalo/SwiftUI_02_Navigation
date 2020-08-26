//
//  ContentView.swift
//  SwiftUI_02_Navigation
//
//  Created by Everis on 26/08/2020.
//  Copyright © 2020 Alan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondView()) {
                Text("Segunda vista")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
